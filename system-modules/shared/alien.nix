{ inputs, systemSettings, ... }:
{
  environment.systemPackages = with inputs.nix-alien.packages.${systemSettings.systemType}; [
    nix-alien
  ];
}
