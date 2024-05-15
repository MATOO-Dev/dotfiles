{ config, ... }:
{
  imports = [
    ./shells.nix
    ./starship.nix
    ./nixvim/default.nix
    ./lazygit.nix
    ./kitty.nix
  ];
}
