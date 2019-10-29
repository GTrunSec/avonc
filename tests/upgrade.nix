import ./make-test.nix (pkgs: {
  name = "nextcloud-upgrade";

  nodes = let
    common = { options, pkgs, ... }: {
      nextcloud.enable = true;
      nextcloud.domain = "localhost";

      services.nginx.enable = true;
      services.postgresql.enable = true;
      systemd.services.postgresql.environment = {
        LD_PRELOAD = "${pkgs.libeatmydata}/lib/libeatmydata.so";
      };

      environment.systemPackages = [ pkgs.jq ];
      virtualisation.memorySize = 1024;
    };

  in {
    generation1 = { lib, options, config, pkgs, ... }: {
      imports = [ common ];

      nextcloud.majorVersion = 16;

      nextcloud.apps = let
        nc16apps = (lib.importJSON ../packages/16/upstream.json).applications;

        excludedApps = [
          # Conflicts with "bookmarks"
          "bookmarks_fulltextsearch"
          # We'll need dpendency ordering for this app
          "auto_mail_accounts"
          # Needs /usr/bin/clamscan
          "files_antivirus"
          # Broken upgrade routine across major versions
          "files_external_dropbox"
          # Upstream URL very unstable
          "files_external_gdrive"
          # Needs PHP's inotify extension
          "files_inotify"
          # Needs the OAuth library
          "grauphel"
          # Only works with MyQSL
          "sensorlogger"
          # Windows only (at least it seems)
          "sharepoint"
          # Seems to be incompatible with PostgreSQL
          "twofactor_admin"
          # Needs "user_backend_sql_raw" in config
          "user_backend_sql_raw"

          # These apps have non-deterministic download URLs
          "quicknotes"
          "spgverein"
          "twainwebscan"
          "twofactor_yubikey"

          # Will be enabled later
          "spread"
          "ojsxc"
          "richdocuments"
        ];
        enableApp = name: let
          isExcluded = lib.elem name excludedApps;
        in lib.const (lib.optionalAttrs (!isExcluded) {
          enable = true;
        });
      in lib.mapAttrs enableApp nc16apps;
    };

    generation2 = { lib, nodes, ... }: {
      imports = [ common ];

      systemd.services.libreoffice-online.enable = false;
      systemd.services.mongooseim.enable = false;

      nextcloud.apps = {
        # XXX: These apps are unsupported for Nextcloud 17.
        end_to_end_encryption.enable = true;
        end_to_end_encryption.forceEnable = true;
        ojsxc.enable = true;
        ojsxc.forceEnable = true;
      } // lib.genAttrs [
        "apporder" "bookmarks" "calendar" "circles" "contacts" "deck" "dropit"
        "external" "files_accesscontrol" "files_markdown" "files_readmemd"
        "files_rightclick" "gpxpod" "groupfolders" "mail" "metadata" "news"
        "passwords" "phonetrack" "polls" "richdocuments" "social" "spreed"
        "tasks"
      ] (app: { enable = true; });
    };
  };

  testScript = { nodes, ... }: let
    switchToGeneration = gen: let
      node = "generation${toString gen}";
      inherit (nodes.${node}.config.system.build) toplevel;
      switchCmd = "${toplevel}/bin/switch-to-configuration test";
    in ''
      $machine->nest('switch to generation ${toString gen}', sub {
        $machine->succeed('${switchCmd} >&2');
        $main::machine = ''$${node};
      });
    '';

    expectedAppsPerlHash = let
      inherit (pkgs.lib) attrNames filterAttrs const escape;
      inherit (nodes.generation2.config.nextcloud) apps;
      alwaysEnabled = [
        "cloud_federation_api" "dav" "federatedfilesharing" "files"
        "lookup_server_connector" "oauth2" "provisioning_api"
        "twofactor_backupcodes" "workflowengine"
      ];
      enabled = attrNames (filterAttrs (const (x: x.enable)) apps);
      allEnabled = enabled ++ alwaysEnabled;
      mkHash = val: "'${escape ["\\" "'"] val}' => 1";
    in "(${pkgs.lib.concatMapStringsSep ", " mkHash allEnabled})";

  in ''
    my $machine = $generation1;

    $machine->waitForUnit('multi-user.target');

    $machine->startJob('nextcloud.service');
    $machine->waitForUnit('nextcloud.service');

    $machine->succeed(
      'curl -L http://localhost/ | grep -o "Username or email"'
    );

    ${switchToGeneration 2}
    $machine->startJob('nextcloud.service');
    $machine->waitForUnit('nextcloud.service');

    $machine->succeed(
      'curl -L http://localhost/ | grep -o initial-state-core-loginUsername'
    );

    my $applist = $machine->succeed('nextcloud-occ app:list --output=json'
                                   .' | jq -r ".enabled | keys[] | @text"');

    my %expected = ${expectedAppsPerlHash};
    my %actual = map { $_ => 1 } split "\n", $applist;
    use Test::More tests => 1;
    is_deeply(\%actual, \%expected, 'enabled apps should match with config');
  '';
})
