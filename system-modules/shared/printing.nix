{ lib, config, pkgs, ... }:
{
# Enable CUPS to print documents.
	services.printing.enable = true;
	# Enable printer driver
	environment.systemPackages = with pkgs; [
		hplip
	];
}
