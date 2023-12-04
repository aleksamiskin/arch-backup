# arch-backup
TLDR
----

My ongoing arch project files will be backed up in this repo to facilitate the ongoing progress with my Arch Linux setup.

The point is to create a lean, customizable and functional programming setup which I can use as a daily driver for other tasks as well, replacing my Win11.

It was obvious I'll have to transition to Linux, so the only unknown variable was the distro I will be using. 

In choosing a distro, Arch became a clear choice being known as lightweight and extremely customizable. The other choice was Gentoo, but I'll get to that one some other time. :)

Back in the day, when installing arch, you'd have to set most things manually but now we have "archinstall", even though it can be broken at times leaving you no choice but to revert to manually setting things up and in a way negating its existence.

One of my preferences is to use cli instead of gui. The argument is that cli enables more control, and can be automated through scripts if needed.


Features
--------

- display server: [x11](https://en.wikipedia.org/wiki/X_Window_System) (primary), [wayland](https://wiki.archlinux.org/title/wayland) (testing)
- compositor(for x11): [picom](https://github.com/yshui/picom) (provides window transparency) started with qtile calling [autostart.sh](https://github.com/aleksamiskin/arch-backup/tree/master/Scripts/autostart.sh)
- tiling window manager: [Qtile](https://qtile.org/) (fast, customizable, chance to learn Python for customizng)
- terminal: [Kitty](https://sw.kovidgoyal.net/kitty/) (customizable, not as fast as alacritty, although comparable performance but supports ligatures)
- shell: [ZSH](https://wiki.archlinux.org/title/zsh) with [oh-my-zsh](https://ohmyz.sh/) (command completion, plugins, theming, compatible with bash)
- init system: [systemd](https://wiki.archlinux.org/title/Systemd) (actively developed, fast, plethora of features, integration with journald, supported by arch)
- logging system: [journald](https://wiki.archlinux.org/title/Systemd/Journal) (centralized logging, ease of use)
- connecting to internet: [iwd](https://wiki.archlinux.org/title/iwd) and [networkd-systemd](https://wiki.archlinux.org/title/systemd-networkd) (since I chose to use systemd init system, this one provides best integration with it; iwd for WiFi management, networkd for Ethernet)
- - both are connected on startup, wrote a [script](https://github.com/aleksamiskin/arch-backup/blob/master/Scripts/switch_between_network_interfaces.sh) using iproute2 to switch between them. Default is Ethernet when both are UP.
- editor: [neovim](https://github.com/neovim/neovim/tree/master) (imo a better [vim](https://github.com/vim/vim), steep learning curve, but speeds up coding using keybinds; no GUI, runs in terminal)
- - plugin manager: [Lazy](https://github.com/folke/lazy.nvim) (for me easier to setup than [Packer](https://github.com/wbthomason/packer.nvim))
- - LSP: TODO
- web browser: [firefox](https://wiki.archlinux.org/title/firefox) (used it for awhile, thinking about testing the brave browser for a chromium based experience)
- audio stack: [alsa](https://wiki.archlinux.org/title/Advanced_Linux_Sound_Architecture)->[pipewire](https://wiki.archlinux.org/title/PipeWire) (with [pipewire-pulse](https://archlinux.org/packages/?name=pipewire-pulse) for volume control, thinking about writing some scripts to control volume using alsa only, but retaining the functionalities of pipewire)
- media:
- - music: [mpd](https://wiki.archlinux.org/title/Music_Player_Daemon) server with [Cantata](https://github.com/CDrummond/cantata) as client (possible switch to a different client solution)
- - video: [mpv](https://wiki.archlinux.org/title/mpv)
- documents: [LibreOffice](https://wiki.archlinux.org/title/LibreOffice)
- system info: [neofetch](https://archlinux.org/packages/extra/any/neofetch/)
- file explorer: [ranger](https://wiki.archlinux.org/title/ranger) (fast, lean, terminal based)
- application launcher: [rofi](https://wiki.archlinux.org/title/rofi) (simple, fast, able to switch windows, launch apps, and is better than [dmenu](https://wiki.archlinux.org/title/dmenu))
- aur manager: [yay](https://github.com/Jguer/yay) (I mostly use official arch repos, but in some cases aur is useful)
- screenshots: [maim](https://github.com/naelstrof/maim) (support for fullscreen and area screenshots, bound via [qtile.config](https://github.com/aleksamiskin/arch-backup/blob/master/qtile/config.py) to execute "ss" scripts in [Scripts](https://github.com/aleksamiskin/arch-backup/tree/master/Scripts))
- themes: custom [theme](https://github.com/aleksamiskin/arch-backup/blob/master/kitty/nightfly.conf) based on nightfly, used system wide when possible (TODO: find a way to automate this)
