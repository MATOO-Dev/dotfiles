# Open ports in the firewall.
{ lib, config, ... }:
{
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ ];
    allowedUDPPorts = [ 51820 ];
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
    ];
  };
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
}
