{ config, pkgs, ... }:
{
  imports = [
    ./keymaps.nix
    ./options.nix
    ./plugins.nix
  ];

  programs.nixvim = {
        enable = true;

        #colorschemes.gruvbox.enable = true;
        #colorschemes.catppuccin.enable = false;
        colorschemes.base16 = {
            enable = true;
            #colorscheme = "monokai";
            colorscheme = let
              theme = config.colorScheme.palette; in {
                base00 = "#${theme.base00}";
                base01 = "#${theme.base01}";
                base02 = "#${theme.base02}";
                base03 = "#${theme.base03}";
                base04 = "#${theme.base04}";
                base05 = "#${theme.base05}";
                base06 = "#${theme.base06}";
                base07 = "#${theme.base07}";
                base08 = "#${theme.base08}";
                base09 = "#${theme.base09}";
                base0A = "#${theme.base0A}";
                base0B = "#${theme.base0B}";
                base0C = "#${theme.base0C}";
                base0D = "#${theme.base0D}";
                base0E = "#${theme.base0E}";
                base0F = "#${theme.base0F}";
            };
        };

		globals = { mapleader = " "; };

        extraPlugins = with pkgs.vimPlugins; [
            vim-move
            treesj
        ];

        extraConfigLua = ''
          require("treesj").setup({use_default_keymap = false})
        '';
    };
}
