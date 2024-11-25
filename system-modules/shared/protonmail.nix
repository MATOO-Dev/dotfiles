{ pkgs, ... }:
{
  services.gnome.gnome-keyring.enable = true;
  services.protonmail-bridge.enable = true;

  environment.systemPackages = with pkgs; [
    protonmail-bridge-gui
    protonmail-desktop
  ];
}
