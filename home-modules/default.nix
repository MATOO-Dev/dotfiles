{ config, ... }:
{
  imports = [
    ./shells.nix
    ./starship.nix
    ./nixvim/nixvim.nix
    ./lazygit.nix
    ./kitty.nix
    ./tmux.nix
    ./hyprland.nix
    ./i3.nix
    ./kdeconnect.nix
  ];
}
