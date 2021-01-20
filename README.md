# Cimplefetch

A simple program to fetch system information written in C.

[![Language grade: C/C++](https://img.shields.io/lgtm/grade/cpp/g/caverym/cimplefetch.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/caverym/cimplefetch/context:cpp)

## Cloning:
clone recursively
```
git clone --recursive https://github.com/caverym/cimplefetch.git
```
_if you didn't clone recursively, run `sh ./setup.sh`

## Usage:
`cimplefetch`

```
-a, --all                  Print all
-A, --arch                 View system architecture
-d, --desktop              View current user desktop environment
-H, --home                 View current user home
-k, --kernel               View kernel info
-o, --os                   View OS info
-s, --shell                View current user shell
-t, --uptime               View system uptime
-T, --full-uptime          View full system uptime
-u, --user                 View current user info
-?, --help                 Give this help list
    --usage                Give a short usage message
-V, --version              Print program version

```

## Building:
```
sh ./setup
make
```

## Installing:
from the AUR:
```
yay -S cimplefetch
```
makepkg:
```
git clone https://aur.archlinux.org/cimplefetch; cd cimplefetch
makepkg -si
```
already built:
```
sudo make install
```
