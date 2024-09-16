{
  lib,
  config,
  pkgs,
  ...
}:
{
  fonts.packages = with pkgs; [
    nerdfonts
    paratype-pt-sans
  ];
}
