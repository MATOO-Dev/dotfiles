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
        'timeshift',
        'ttf-font-awesome',
        'nerd-fonts',
        'vim',
]

# Desktop Only
decman.packages += [
        'lib32-nvidia-utils',
        'nvidia-open-lts',
        'nvidia-utils',
]

# Desktop Environment
decman.packages += [
        'hyprland',
        'hyprsunset',
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
        'starship',
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
        'hyprshot',
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

