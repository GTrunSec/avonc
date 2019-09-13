from typing import IO, Union, Optional, Iterator, List


class Tag:
    def find_all(self, name: Optional[str] = None) -> 'Tag': ...
    def __getitem__(self, key: str) -> str: ...
    def __iter__(self) -> Iterator['Tag']: ...


class BeautifulSoup(Tag):
    def __init__(self, markup: Union[IO, str] = ...,
                 features: Optional[Union[str, List[str]]] = ...): ...
