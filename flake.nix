{
  description = "MATOO's NixOS configuration flake";

  outputs =
    { self, ... }@inputs:

    let
      userSettings = {
        username = "matoo";
        displayname = "MATOO";
        theme = "atelier-cave";
        windowManager = "gnome";
        windowManagerType = "x11";
        browser = "firefox";
        terminal = "kgx";
        font = "nerdfonts";
        fontPkg = "nerdfonts";
        defaultEditor = "nvim";
        configDirectory = "~/dotfiles";
      };
      systemSettings = {
        profile = "desktop";
        timezone = "Europe/Berlin";
        locale = "en_US.UTF-8";
        specialLocale = "de_DE.UTF-8";
        systemType = "x86_64-linux";
      };
      pkgs = import inputs.nixpkgs {
        system = systemSettings.systemType;
        hostPlatform = systemSettings.systemType;
        config = {
          allowUnfree = true;
          allowUnfreePredicate = (_: true);
        };
      };
      pkgs-stable = import inputs.nixpkgs-stable {
        system = systemSettings.systemType;
        hostPlatform = systemSettings.systemType;
        config = {
          allowUnfree = true;
          allowUnfreePredicate = (_: true);
        };
      };
    in
    {
      homeConfigurations = {
        user = inputs.home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./home.nix ];
          extraSpecialArgs = {
            inherit inputs;
            inherit pkgs-stable;
            inherit systemSettings;
            inherit userSettings;
          };
        };
      };

      nixosConfigurations = {
        system = inputs.nixpkgs.lib.nixosSystem {
          system = systemSettings.systemType;
          modules = [ ./configuration.nix ];
          specialArgs = {
            hostname = userSettings.username + "-" + systemSettings.profile;
            inherit inputs;
            inherit pkgs-stable;
            inherit systemSettings;
            inherit userSettings;
          };
        };
      };
    };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable = {
      url = "github:nixos/nixpkgs/nixos-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-colors.url = "github:misterio77/nix-colors";
    stylix.url = "github:danth/stylix";
    nix-alien = {
      url = "github:thiagokokada/nix-alien";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}
