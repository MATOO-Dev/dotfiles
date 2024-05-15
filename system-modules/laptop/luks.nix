{ lib, config, ... }:
{
# luks.laptop settings
  	boot.initrd.luks.devices."e1c0ddb0-116b-4456-828a-bcf1adafbcd8".device = "/dev/disk/by-uuid/e1c0ddb0-116b-4456-828a-bcf1adafbcd8";
}
