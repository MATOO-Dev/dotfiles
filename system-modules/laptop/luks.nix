{ lib, config, ... }:
{
# luks.laptop settings
	boot.initrd.luks.devices."luks-67f52dc8-63a3-4144-89b8-f893d5cbd69e".device = "/dev/disk/by-uuid/67f52dc8-63a3-4144-89b8-f893d5cbd69e";
}
