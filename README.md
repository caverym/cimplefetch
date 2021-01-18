# Cimplefetch

A simple program to fetch system information written in C.

## cloning
clone recursively
```
git clone --recursive https://github.com/caverym/cimplefetch.git
```
_if you didn't clone recurisvely, run `sh ./setup.sh`

## Usage:
`cimplefetch`

```
 -a, --all                  Print all
 -A, --arch                 View machine
 -d, --desktop              View current user desktop environment
 -H, --home                 View current user home
 -k, --kernel               View kernel info
 -o, --os                   View OS info
 -s, --shell                View current user shell
 -t, --uptime               View system uptime
 -u, --user                 View current user info
 -?, --help                 Give this help list
     --usage                Give a short usage message
 -V, --version              Print program version
```

## building
```
sh ./setup
make
```

## installing
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