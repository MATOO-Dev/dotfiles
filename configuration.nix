{
  pkgs,
  pkgs-unstable,
  hostname,
  systemSettings,
  inputs,
  ...
}:
{
  imports = [
    ./system-modules/shared/shared-modules.nix
    (
      ./system-modules + ("/" + systemSettings.profile) + ("/" + systemSettings.profile + "-modules.nix")
    )
    # inputs.stylix.nixosModules.stylix
  ];

  boot.kernelPackages = pkgs.linuxPackages_latest;

  environment.variables.hostname = hostname;
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
  environment.systemPackages =
    (with pkgs-unstable; [
      bashInteractive
      ffmpeg
      # ccls
      clang
      clang-tools
      dotnet-runtime
      dotnet-sdk
      dunst
      firefox
      gcc
      git
      git-lfs
      gitflow
      gnome.gnome-terminal
      gnupg
      home-manager
      lf
      libnotify
      lua-language-server
      neovim
      nil
      pass
      ripgrep
      swww
      syncthing
      tmux
      unzip
      vim
      wine
      winetricks
      zellij
      zoxide
      zsh
      zsh-autosuggestions
      zsh-powerlevel10k
    ])
    ++ (with pkgs-unstable; [
      nh
      openvpn
      protonvpn-cli_2
      protonvpn-gui
      wireguard-tools
      zapzap
    ]);

  system.stateVersion = "23.11"; # Did you read the comment?
}
