{ lib, config, ... }:
{
	services.xserver = {
		layout = "de";
		xkbVariant = "";
	};

# Configure console keymap
	console.keyMap = "de";

# Enable touchpad support (enabled default in most desktopManager).
# services.xserver.libinput.enable = true;
}
