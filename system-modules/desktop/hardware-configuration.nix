# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{
  config,
  lib,
  pkgs,
  modulesPath,
  ...
}:

{
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  boot.initrd.availableKernelModules = [
    "xhci_pci"
    "nvme"
    "ahci"
    "usbhid"
    "usb_storage"
    "sd_mod"
  ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/7de96758-31fa-4edc-a2e8-aa46ea060bce";
    fsType = "ext4";
  };

  boot.initrd.luks.devices."luks-5a044a83-8d47-451d-a30b-a3c2001ed671".device = "/dev/disk/by-uuid/5a044a83-8d47-451d-a30b-a3c2001ed671";

  fileSystems."/mnt/secondary" = {
    device = "/dev/disk/by-uuid/067c0ae5-f926-4eaa-84c2-53069ac88e3a";
    fsType = "ext4";
  };

  boot.initrd.luks.devices."luks-5655c5ba-c909-44aa-861e-b00a8ad89967".device = "/dev/disk/by-uuid/5655c5ba-c909-44aa-861e-b00a8ad89967";

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/1AA6-D790";
    fsType = "vfat";
  };

  swapDevices = [
    { device = "/dev/disk/by-uuid/fa81ed9e-2a91-46f5-85fa-5bbfae69b865"; }
  ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp14s0.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp15s0.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
