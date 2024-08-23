{
  lib,
  config,
  pkgs,
  ...
}:
{
  # Enable CUPS to print documents.
  services.printing = {
    enable = true;

    drivers = with pkgs; [ hplip ];
  };

  # HP printer driver
  environment.systemPackages = with pkgs; [ hplip ];

  # Enable scanning
  hardware.sane = {
    enable = true;
    extraBackends = [ pkgs.hplipWithPlugin ];
  };

  users.users.matoo.extraGroups = [
    "scanner"
    "lp"
  ];
}
