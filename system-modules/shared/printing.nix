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

  environment.systemPackages = with pkgs; [ hplip ];
}
