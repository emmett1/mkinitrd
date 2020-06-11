# mkinitrd
`mkinitrd` is a simple initrd generator for linux system. It was based on LFS initramfs script but heavily modified. It does support livecd iso, check [guide here](https://github.com/emmett1/mkinitrd/wiki/Make-livecd-ISO) how to do it.

## Install
Install it is simply running:
```
make install
```
or use DESTDIR for custom location:
```
make DESTDIR=/some/path install
```
## Usage
To generate initrd is simply running as root:
```
# mkinitrd [kernel version]
```
Use `kernel version` if generating initrd for not currently running kernel. By default it automatically detect kernel using `uname -r`. The initrd output is `/boot/initrd-<kernel version>.img`.
