{ lib, config, ... }:
{
# Allow nix flakes
	nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
