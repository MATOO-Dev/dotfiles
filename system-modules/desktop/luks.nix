{ lib, config, ... }:
{
# luks.desktop settings
	boot.initrd.luks.devices."luks-bf9c84b2-49de-4b7d-95f7-c49b83bec870".device = "/dev/disk/by-uuid/bf9c84b2-49de-4b7d-95f7-c49b83bec870";
}
