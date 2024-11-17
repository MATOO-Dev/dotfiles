{ lib, config, ... }:
{
# luks.desktop settings
	boot.initrd.luks.devices."luks-5c255f9b-a0f8-47d7-a7c0-fe2c5861784c".device = "/dev/disk/by-uuid/5c255f9b-a0f8-47d7-a7c0-fe2c5861784c";
}
