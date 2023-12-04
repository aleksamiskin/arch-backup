# arch-backup
My ongoing arch project files will be backed up in this repo to facilitate the ongoing progress with my Arch Linux setup.
The point is to create a lean, customizable and functional programming setup which I can use as a daily driver for other tasks as well, replacing my Win11.
It was obvious I'll have to transition to Linux, so the only unknown variable was the distro I will be using. 
In choosing a distro Arch became a clear choice being known as lightweight and extremely customizable. The other choice was Gentoo, but I'll get to that one some other time. :)
Back in the day, when installing arch, you'd have to set most things manually but now we have "archinstall", even though it can be broken at times leaving you no choice but to revert to manually setting things up and in a way negating its existence.
One of my preferences is to use cli instead of gui. The argument is that cli enables more control, and can be automated through scripts if needed.

FEATURES:
-display server: x11(primary), wayland(testing)
-compositor(for x11): picom (provides window transparency)
-tiling window manager: Qtile (fast, customizable, chance to learn Python for customizng)
-terminal: Kitty (customizable, not as fast as alacritty, although comparable performance but supports ligatures)
-shell: ZSH (command completion, plugins, theming, compatible with bash)
-init system: systemd (actively developed, fast, plethora of features, integration with journald)
-logging system: journald (centralized logging, ease of use)
-connecting to internet: iwd and networkd-systemd (since I chose to use systemd init system, this one provides best integration with it; iwd for WiFi management, networkd for Ethernet)
--both are connected on startup, wrote a script using iproute2 to switch between them. Default is Ethernet when both are UP.
-editor: neovim (imo a better vim, steep learning curve, but speeds up coding using keybinds; no GUI, runs in terminal)
--plugin manager: Lazy (for me easier to setup than Packer)
--LSP: TODO
-web browser: firefox (used it for awhile, thinking about testing the brave browser for a chromium based experience)
-audio stack: alsa->pipewire (with pipewire-pulse for volume control, thinking about writing some scripts to control volume using alsa only, but retaining the functionalities of pipewire)
-media:
--music: mpd server with Cantata as client (possible switch to a different client solution)
--video: mpv
-documents: LibreOffice
-system info: neofetch
-file explorer: ranger (fast, lean, terminal based)
-application launcher: rofi (simple, fast, able to switch windows, launch apps, and is better than dmenu)
-aur manager: yay (I mostly use official arch repos, but in some cases aur is useful)
