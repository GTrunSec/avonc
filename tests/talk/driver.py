from xmlrpc.server import SimpleXMLRPCServer

from selenium import webdriver
from selenium.webdriver.firefox.options import Options

from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC


class Driver:
    def __init__(self):
        options = Options()
        options.add_argument('--headless')
        options.add_argument('--width=1920')
        options.add_argument('--height=1080')
        options.set_preference('browser.tabs.remote.autostart', False)
        options.set_preference('media.navigator.permission.disabled', False)

        # Note that this isn't a boolean: 1 -> SitePermissions.ALLOW
        options.set_preference('permissions.default.microphone', 1)
        options.set_preference('permissions.default.camera', 1)

        options.set_preference('media.video_loopback_dev',
                               'Dummy video device (0x0000)')
        options.set_preference('media.audio_loopback_dev',
                               'Sine source at 440 Hz')
        options.set_preference('media.cubeb.output_device', 'Null Output')
        options.set_preference('media.volume_scale', '1.0')

        options.set_preference('network.captive-portal-service.enabled', False)
        options.set_preference('devtools.console.stdout.content', True)
        options.set_preference('marionette.log.level', 'Trace')

        self.driver = webdriver.Firefox(
            options=options, service_log_path='/tmp/xchg/driver.log'
        )
        self.wait = WebDriverWait(self.driver, 60)

    def login(self, name, passwd):
        self.driver.get('https://nextcloud/')
        self.driver.find_element_by_id('user').send_keys(name)
        self.driver.find_element_by_id('password').send_keys(passwd)
        self.driver.find_element_by_id('submit').click()

        self.wait.until(EC.visibility_of_element_located(
            (By.CSS_SELECTOR, '#app-navigation .nav-files')
        ))

    def create_conversation(self, name):
        self.wait.until(EC.visibility_of_element_located(
            (By.CSS_SELECTOR, '#appmenu *[data-id=spreed] a')
        )).click()

        searchbox = self.wait.until(EC.element_to_be_clickable(
            (By.CSS_SELECTOR, '#oca-spreedme-add-room a')
        ))

        action = ActionChains(self.driver)
        action.move_to_element(searchbox).click().send_keys(name).perform()

        self.wait.until(EC.element_to_be_clickable(
            (By.CLASS_NAME, 'icon-public')
        )).click()

        self.wait.until(EC.visibility_of_element_located(
            (By.CSS_SELECTOR, '.detailCallInfoContainer h2')
        ))

        self._wait_for_page_load()

        return self.driver.current_url

    def join_conversation(self, url):
        self.driver.get(url)
        self.wait.until(EC.visibility_of_element_located(
            (By.CSS_SELECTOR, '.detailCallInfoContainer h2')
        ))

        self._wait_for_page_load()

    def start_call(self):
        self.driver.find_element_by_class_name('join-call').click()

        for button in ['mute', 'hideVideo']:
            self.wait.until(EC.element_to_be_clickable(
                (By.ID, button)
            )).click()

    def _wait_for_page_load(self):
        def _check_page_load(driver):
            ready_state = driver.execute_script('return document.readyState;')
            return ready_state == 'complete'

        self.wait.until(_check_page_load)

    def wait_for_others(self):
        css = '.videoContainer:not(.not-connected):not(.videoContainer-dummy)'

        def _check_remote_video_elements(driver):
            vidcontainers = driver.find_elements_by_css_selector(css)
            # XXX: This should really be the number of the actual peers but
            #      unfortunately there is still a reliability issue and nodes
            #      sometimes fail to establish a stream.
            return len(vidcontainers) >= 2

        WebDriverWait(self.driver, 300).until(_check_remote_video_elements)

    def webrtc_info(self):
        curwin = self.driver.current_window_handle

        self.driver.execute_script('window.open("", "webrtcWindow");')
        self.driver.switch_to_window('webrtcWindow')
        self.driver.get('about:webrtc')
        self.wait.until(EC.visibility_of_element_located(
            (By.CSS_SELECTOR, '#content .log')
        ))

        self._wait_for_page_load()

        source = self.driver.execute_script('''
        let content = document.querySelector("#content");
        let nodes = content.querySelectorAll(".no-print");
        let noPrintList = [];
        for (let node of nodes) {
            noPrintList.push(node);
            node.style.setProperty("display", "none");
        }
        return content.outerHTML;
        ''')
        self.driver.close()
        self.driver.switch_to_window(curwin)
        with open('/tmp/xchg/webrtc.html', 'w') as webrtc:
            webrtc.write(source)

    def screenshot(self):
        self.driver.save_screenshot('/tmp/xchg/screenshot.png')

    def save_html(self):
        with open('/tmp/xchg/page.html', 'w') as page:
            page.write(self.driver.page_source)


server = SimpleXMLRPCServer(('localhost', 1234), allow_none=True)
server.register_introspection_functions()
server.register_instance(Driver())
server.serve_forever()
