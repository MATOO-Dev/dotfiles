{ lib, config, ... }:
{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Enable Hyprland
  programs.hyprland.enable = true;

  # Enable i3wm
  services.xserver.windowManager.i3.enable = true;

  # Enable sway
  programs.sway.enable = false;

  # Enable xdg desktop portal (for hyprland)
  #  xdg.portal.enable = true;
  #  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk];
}
