{ pkgs, ... }:
{
  virtualisation.libvirtd.enable = true;
  boot.kernelModules = [ "kvm-amd" ];
  environment.systemPackages = with pkgs; [ gnome-boxes ];
}
