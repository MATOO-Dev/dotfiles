{ lib, config, ... }:
{
  # Nvidia bs
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    # package = config.boot.kernelPackages.nvidiaPackages.beta;
    modesetting.enable = true;
    open = false;
  };

  services.xserver.displayManager.gdm.wayland = true;
}
