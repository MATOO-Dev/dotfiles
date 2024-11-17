{ pkgs, ... }:
{
  home.packages = with pkgs.gnomeExtensions; [
    appindicator
    blur-my-shell
    caffeine
    gsconnect
    just-perfection
    quarter-windows
    soft-brightness-plus
    places-status-indicator
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
        quarter-windows.extensionUuid
        soft-brightness-plus.extensionUuid
        places-status-indicator.extensionUuid
      ];
    };
  };
}
