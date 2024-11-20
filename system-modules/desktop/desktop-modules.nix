{ ... }:
{
  imports = [
    ./luks.nix
    ./nvidia.nix
    ./hardware-configuration.nix
    ./sleep.nix
  ];
}
