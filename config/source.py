import decman
from decman import File, Directory

# Essential system packages
decman.packages += [
        'amd-ucode',
        'base',
        'base-devel',
        'btrfs-progs',
        'cryptsetup',
        'efibootmgr',
        'grub',
        'grub-btrfs',
        'inotify-tools',
        'kitty',
        'linux',
        'linux-lts',
        'linux-firmware',
        'ly',
        'man-db',
        'neofetch',
        'networkmanager',
        'openssh',
        'pipewire',
        'pipewire-alsa',
        'pipewire-pulse',
        'snapper',
        'sudo',
        'stow',
        'terminus-font',
        'timeshift',
        'ttf-font-awesome',
        'vim',
]

# Desktop Environment
decman.packages += [
        'hyprland',
        'hyprshot',
        'waybar',
        'wofi',
]

# CLI Tools
decman.packages += [
        'chezmoi',
        'fzf',
        'git',
        'github-cli',
        'lazygit',
        'neofetch',
        'neovim',
        'tldr',
        'tree',
        'typst',
        'valgrind',
        'yt-dlp',
        'zoxide',
        'zsh',
        'zsh-autosuggestions',
        'zsh-completions',
]

# Programs
decman.packages += [
        'audacity',
        'blender',
        'discord',
        'dolphin',
        'drawio-desktop',
        'firefox',
        'gimp',
        'gnome-keyring',
        'eog',
        'inkscape',
        'kdenlive',
        'keepassxc',
        'kolourpaint',
        # 'libreoffice',
        'lutris',
        'mission-center',
        'obfuscate',
        'obsidian',
        'pavucontrol',
        'pdfarranger',
        'pdfpc',
        'prismlauncher',
        'protonmail-bridge',
        'proton-vpn-gtk-app',
        'scrcpy',
        'signal-desktop',
        'steam',
        'thunderbird',
        'vlc',
        'xournalpp',
]

decman.aur_packages += [
        'anki-bin',
        'bazecor',
        'betterdiscordctl',
        'denaro',
        'discover-overlay',
        'footage',
        'gpu-screen-recorder-gtk',
        'heroic-games-launcher-bin',
        'localsend-bin',
        'numbat',
        'onlyoffice-bin',
        'pandoc-bin',
        'paru',
        'protonup-qt',
        'r2modman-bin',
        'ryujinx',
        'timeshift-autosnap',
        'vintagestory',
        'yay',
        'yt-dlg',
        'zapzap',
]

decman.ignored_packages += [
        'decman-git',
]

