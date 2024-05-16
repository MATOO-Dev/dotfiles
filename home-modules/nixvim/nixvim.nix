{ config, pkgs, ... }:
{
  imports = [
    ./keymaps.nix
    ./options.nix
    ./plugins.nix
    ./theming.nix
    ./extraPlugins.nix
  ];

  programs.nixvim = {
    enable = true;

    globals = {
      mapleader = " ";
    };
  };
}
