# A list of my common issues and solutions for Arch
- discord: 
- - ISSUE001: missing icons -> SOLUTION001: install [noto-fonts-emoji](https://archlinux.org/packages/extra/any/noto-fonts-emoji/)
- pacman mirrors:
- - ISSUE002: automate mirrorlist(find mirrors that are synched and sort by speed) -> SOLUTION002: install [reflector](https://wiki.archlinux.org/title/Reflector)
- - powerpill: ISSUE003: fix db.sig errors -> SOLUTION003: -set default "SigLevel = Required DatabaseOptional" ; -set SigLevel for core, multilib and extra to "PackageRequired"
- system:
- - ISSUE004: reboot on shutdown(some mobos have a weird "Wake on LAN" option that causes this issue) -> SOLUTION004: disable "Wake on LAN in BIOS/UEFI"
