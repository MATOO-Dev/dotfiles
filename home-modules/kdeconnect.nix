{ pkgs, ... }:
{
  services.kdeconnect = {
    enable = true;
    package = pkgs.gnomeExtensions.gsconnect;
    indicator = true;
  };
}
