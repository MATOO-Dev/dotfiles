{
  pkgs,
  # pkgs-unstable,
  hostname,
  systemSettings,
  inputs,
  ...
}:
{
  imports = [
    ./system-modules/shared/shared-modules.nix
    # (
    #   ./system-modules + ("/" + systemSettings.profile) + ("/" + systemSettings.profile + "-modules.nix")
    # )
    # inputs.stylix.nixosModules.stylix
  ];

  # boot.kernelPackages = pkgs.linuxPackages_latest;
  # todo: re-enable latest kernel once nvidia fixes their drivers
  boot.kernelPackages = pkgs.linuxPackages_6_11;

  environment.variables.hostname = hostname;
  environment.variables.MOZ_ENABLE_WAYLAND = 0;
  #stylix.base16Scheme = inputs.nix-colors.colorSchemes.gruvbox-dark-medium;

  # allow EOL electron version
  nixpkgs.config.permittedInsecurePackages = [ "electron-25.9.0" ];

  # Define a user account. Don't forget to set a password with ‘passwd’.

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
  };

  users.users.matoo = {
    isNormalUser = true;
    description = "MATOO";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.zsh;
  };

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  programs.zsh.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = (
    with pkgs;
    [
      bashInteractive
      ffmpeg
      clang
      clang-tools
      dotnet-runtime
      dotnet-sdk
      dunst
      efibootmgr
      firefox
      gcc
      git
      git-lfs
      gitflow
      gnome-terminal
      gnupg
      home-manager
      nix-ld
      lf
      libnotify
      lua-language-server
      neovim
      nh
      nil
      openvpn
      pinentry-curses
      pinentry-gtk2
      protonvpn-cli_2
      protonvpn-gui
      ripgrep
      swww
      syncthing
      tmux
      unzip
      vim
      wget
      wine
      winetricks
      wireguard-tools
      zellij
      zoxide
      zsh
      zsh-autosuggestions
      zsh-powerlevel10k
    ]
  );

  programs.nix-ld = {
    enable = true;
    # libraries = pkgs.steam-run.fhsenv.args.multiPkgs pkgs;
  };

  system.stateVersion = "23.11"; # Did you read the comment?
}
