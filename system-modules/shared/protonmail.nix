{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    protonmail-bridge
    protonmail-desktop
  ];

  services.gnome.gnome-keyring.enable = true;
  systemd.user.services.protonmail-bridge = {
    description = "Protonmail Bridge";
    enable = true;
    script = "${pkgs.protonmail-bridge}/bin/protonmail-bridge --noninteractive --log-level info";
    path = [ pkgs.gnome-keyring ];
    wantedBy = [ "graphical-session.target" ];
    partOf = [ "graphical-session.target" ];
  };
}
