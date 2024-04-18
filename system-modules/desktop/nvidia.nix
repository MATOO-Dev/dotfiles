{ lib, config, ... }:
{
# Nvidia bs
	hardware.opengl = {
		enable = true;
		driSupport = true;
		driSupport32Bit = true;
	};

	services.xserver.videoDrivers = ["nvidia"];
	hardware.nvidia ={
		package = config.boot.kernelPackages.nvidiaPackages.stable;
		modesetting.enable = true;
		open = false;
	};

	services.xserver.displayManager.gdm.wayland = true;
}
