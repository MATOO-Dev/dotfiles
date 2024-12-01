# Open ports in the firewall.
{ lib, config, ... }:
{
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [
      53317 # localsend
      27040 # steam local transfer
      1143 # protonmail-bridge
      1025 # protonmail-bridge
    ];
    allowedUDPPorts = [
      53317 # localsend
      51820 # wireguard
      50990 # dbeaver
    ];
    allowedTCPPortRanges = [
      #kde connect
      {
        from = 1714;
        to = 1764;
      }
    ];
    allowedUDPPortRanges = [
      #kde connect
      {
        from = 1714;
        to = 1764;
      }
      # steam local transfer
      {
        from = 27031;
        to = 27036;
      }
    ];
  };
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
}
