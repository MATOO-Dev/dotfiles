# Open ports in the firewall.
{ lib, config, ... }:
{
	networking.firewall.allowedTCPPorts = [ ];
	networking.firewall.allowedUDPPorts = [ 51820 ];
# Or disable the firewall altogether.
# networking.firewall.enable = false;
}
