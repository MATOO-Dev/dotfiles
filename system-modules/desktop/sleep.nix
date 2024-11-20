{ ... }:
{
  systemd = {
    targets = {
      sleep.enable = false;
      suspend.enable = false;
      hibernate.enable = false;
      "hybrid-sleep".enable = false;
    };
  };

  # systemd.sleep.extraConfig = ''
  #   AllowSuspend=no
  #   AllowHibernation=no
  #   AllowHybridSleep=no
  #   AllowSuspendThenHibernate=no
  # '';
}
