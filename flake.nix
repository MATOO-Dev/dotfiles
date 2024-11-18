{
  description = "MATOO's NixOS configuration flake";

  outputs =
    { self, ... }@inputs:

    # these dont really do anything yet, theyre just placeholders
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
        desktop = inputs.nixpkgs.lib.nixosSystem {
          system = systemSettings.systemType;
          modules = [
            ./configuration.nix
            ./system-modules/desktop/desktop-modules.nix
          ];
          specialArgs = {
            hostname = "matoo-desktop";
            inherit inputs;
            inherit pkgs-stable;
            inherit systemSettings;
            inherit userSettings;
          };
        };
        laptop = inputs.nixpkgs.lib.nixosSystem {
          system = systemSettings.systemType;
          modules = [
            ./configuration.nix
            ./system-modules/laptop/laptop-modules.nix
          ];
          specialArgs = {
            hostname = "matoo-laptop";
            inherit inputs;
            inherit pkgs-stable;
            inherit systemSettings;
            inherit userSettings;
          };
        };
        experimental = inputs.nixpkgs.lib.nixosSystem {
          system = systemSettings.systemType;
          modules = [
            ./configuration.nix
            ./system-modules/experimental/experimental-modules.nix
          ];
          specialArgs = {
            hostname = "nixos-test";
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
