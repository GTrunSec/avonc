from typing import Optional, Iterable, Generator, Tuple


class Version:
    major: int
    minor: int
    patch: int
    prerelease: int
    build: Tuple[str, ...]

    partial: bool

    def __init__(self,
                 version_string: Optional[str] = ...,
                 major: Optional[int] = ...,
                 minor: Optional[int] = ...,
                 patch: Optional[int] = ...,
                 prerelease: Optional[str] = ...,
                 build: Optional[str] = ...,
                 partial: bool = ...): ...

    @classmethod
    def coerce(self, version_string: str, partial: bool = ...): ...

    def __eq__(self, other: object) -> bool: ...
    def __ne__(self, other: object) -> bool: ...
    def __lt__(self, other: object) -> bool: ...
    def __le__(self, other: object) -> bool: ...
    def __gt__(self, other: object) -> bool: ...
    def __ge__(self, other: object) -> bool: ...
    def next_major(self) -> 'Version': ...
    def next_minor(self) -> 'Version': ...
    def next_patch(self) -> 'Version': ...


class Spec:
    def __init__(self, *expressions: str): ...
    def match(self, version: Version) -> bool: ...
    def select(self, versions: Iterable[Version]) -> Optional[Version]: ...
    def filter(self, versions: Iterable[Version]) -> Generator[Version,
                                                               None, None]: ...
