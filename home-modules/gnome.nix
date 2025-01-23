{ pkgs, ... }:
{
  home.packages = with pkgs.gnomeExtensions; [
    appindicator
    blur-my-shell
    caffeine
    gsconnect
    just-perfection
    places-status-indicator
    quarter-windows
    soft-brightness-plus
    window-gestures
  ];

  dconf.settings = {
    "org/gnome/shell" = {
      disable-user-extensions = false;
      enabled-extensions = with pkgs.gnomeExtensions; [
        appindicator.extensionUuid
        blur-my-shell.extensionUuid
        caffeine.extensionUuid
        gsconnect.extensionUuid
        just-perfection.extensionUuid
        places-status-indicator.extensionUuid
        quarter-windows.extensionUuid
        soft-brightness-plus.extensionUuid
        window-gestures.extensionUuid
      ];
    };
  };
  # "org/gnome/desktop/wm/preferences" = {
  #   focus-new-windows = "smart";
  # };
}
