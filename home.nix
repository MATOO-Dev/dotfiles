{ config, pkgs, inputs, ... }:

{
	imports = [
        ./home-modules/shells.nix
        inputs.nix-colors.homeManagerModules.default
        inputs.nixvim.homeManagerModules.nixvim
        ././home-modules/nixvim/nixvim.nix
        #inputs.stylix.homeManagerModules.stylix
	];

    colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-medium;
    #colorScheme = inputs.nix-colors.colorSchemes.gruvbox-light-medium;
    #programs.nixvim = import ././home-modules/nixvim/nixvim.nix;
    #stylix = {
      #image = ./wallpaperNMS.jpg;
      #polarity = "dark";
      #base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";
    #};

# Home Manager needs a bit of information about you and the paths it should
# manage.
	home.username = "matoo";
	home.homeDirectory = "/home/matoo";

    news.display = "silent";

# set default editor
	# programs.vim.defaultEditor = true;
    programs.java.enable = true;

# This value determines the Home Manager release that your configuration is
# compatible with. This helps avoid breakage when a new Home Manager release
# introduces backwards incompatible changes.
#
# You should not change this value, even if you update Home Manager. If you do
# want to update the value, then make sure to first check the Home Manager
# release notes.
	home.stateVersion = "23.11"; # Please read the comment before changing.

# allow EOL electron version
	nixpkgs.config.permittedInsecurePackages = ["electron-25.9.0"];

# unfree test
	nixpkgs.config.allowUnfree = true;

# The home.packages option allows you to install Nix packages into your
# environment.
		home.packages = with pkgs; [
                alacritty
				anki
				appeditor
				blender
				denaro
				discord
				drawio
                firefox
				gcolor3
				gedit
				gimp
				gitkraken
				gnome.eog
				gnome-extension-manager
				gnome.gnome-tweaks
				godot_4
                java-language-server
				jdk
                kitty
				lazygit
                librewolf
				localsend
				lutris
				meld
				mission-center
				neofetch
                netcat-gnu
				obsidian
				pavucontrol
				prismlauncher
				protonmail-bridge
				protonup-qt
				scrcpy
				steam
				thunderbird
				tldr
				typst
                ungoogled-chromium
                #vintagestory
				vlc
                vscodium
                wezterm
				wireshark
				xclip
				xournalpp
				yt-dlp
			];

# Home Manager is pretty good at managing dotfiles. The primary way to manage
# plain files is through 'home.file'.
	home.file = {
# # Building this configuration will create a copy of 'dotfiles/screenrc' in
# # the Nix store. Activating the configuration will then make '~/.screenrc' a
# # symlink to the Nix store copy.
# ".screenrc".source = dotfiles/screenrc;

# # You can also set the file content immediately.
# ".gradle/gradle.properties".text = ''
#   org.gradle.console=verbose
#   org.gradle.daemon.idletimeout=3600000
# '';
	};

# Home Manager can also manage your environment variables through
# 'home.sessionVariables'. If you don't want to manage your shell through Home
# Manager then you have to manually source 'hm-session-vars.sh' located at
# either
#
#  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
#
# or
#
#  /etc/profiles/per-user/matoo/etc/profile.d/hm-session-vars.sh
#
	home.sessionVariables = {
# EDITOR = "emacs";
		EDITOR = "nvim";
	};

# Let Home Manager install and manage itself.
	programs.home-manager.enable = true;
}
