# mkinitrd
`mkinitrd` is a simple initrd generator for linux system. It does support livecd iso, check [guide here](https://github.com/emmett1/mkinitrd/wiki/Make-livecd-ISO) how to do it.

## Install
Install it is simply running:
```
make install
```
or use DESTDIR for custom location:
```
make DESTDIR=/some/path install
```

## Dependencies
- cpio/libarchive

## Usage
run `mkinitrd -h` to view usage:
```
Usage:
  mkinitrd [option] [argument]

Options:
  -k <version>  custom kernel version (default: 5.4.44-Venom)
  -o <output>   custom output name (default: )
  -i <init>     custom init file (default: init)
  -m <modules>  add extra modules (comma separated)
  -b <binaries  add extra binary (comma separated)
  -f <file>     add extra file (comma separated & absolute path)
  -c <config>   use custom config (default: )
  -A <hook>     add extra hook (comma separated, precedence over -a, -s & HOOKS)
  -a <hook>     add extra hook (comma separated, precedence over -s & after HOOKS)
  -s <hook>     skip hook defined in HOOKS (comma separated)
  -q            quiet mode

```
## Configuration
Its configuration is at `/etc/mkinitrd.conf`. You can specify additional binary, files, kernel modules and custom output name for the initrd.
