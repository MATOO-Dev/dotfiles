{ lib, config, ... }:
{
  # Enable laptop power tweaks
  services.tlp.enable = false;
  services.tlp.settings = {
    CPU_BOOST_ON_BAT = 0;
    CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
    CPU_SCALING_GOVERNOR_ON_AC = "performance";
    RUNTIME_PM_ON_BAT = "auto";
    RUNTIME_PM_ON_AC = "auto";
  };
  services.power-profiles-daemon.enable = true;
}
