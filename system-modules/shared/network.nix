{ lib, config, hostname, pkgs, ... }:
{
    networking.hostName = hostname; # Define your hostname.
# networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

# Configure network proxy if necessary
# networking.proxy.default = "http://user:password@proxy:port/";
# networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

# Enable networking
    networking.networkmanager.enable = true;

# EnableIPv6
    networking.enableIPv6 = false;

	environment.etc.openvpn.source = "${pkgs.update-resolv-conf}/libexec/openvpn";
}
