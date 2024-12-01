{ inputs, pkgs, ... }:
{
  imports = [
    inputs.autostart.homeManagerModules.xdg-autostart
  ];

  xdg.autoStart = {
    packages = with pkgs; [
      # this currently does not work because its lacking a desktop file
      # I could try fixing this with overrides, but its not really worth it, since gnome decided not to support the necessary protocol under wayland for the program itself to run at all
      # I'll leave it here in case I switch DEs at some point
      # discover-overlay
    ];
  };
}
