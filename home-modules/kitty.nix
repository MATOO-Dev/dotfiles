{ config, ... }:
{
  programs.kitty = {
    enable = true;
    shellIntegration.enableBashIntegration = true;
    shellIntegration.enableZshIntegration = true;

    #theme = "Gruvbox Material Dark Medium";

    font = {
      name = "CaskaydiaCoveNF-Mono";
      size = 20;
    };

    keybindings = {
      "ctrl+plus" = "change_font_size all +2.0";
      "ctrl+minus" = "change_font_size all -2.0";
    };

    settings = let
      theme = config.colorScheme.palette; in {
      disable_ligatures = "always";
      scrollback_lines = 1000;
      enable_audio_bell = "no";
      remember_window_size = "yes";
      cursor_shape = "block";
      shell_integration = "no_cursor";

      foreground = "#${theme.base05}";
      background = "#${theme.base00}";
      selection_foreground = "#${theme.base05}";
      selection_background = "#${theme.base02}";
      color0 = "#${theme.base00}"; #black
      color1 = "#${theme.base08}"; #red
      color2 = "#${theme.base0B}"; #green
      color3 = "#${theme.base0A}"; #yellow
      color4 = "#${theme.base0D}"; #blue
      color5 = "#${theme.base0E}"; #magenta
      color6 = "#${theme.base0C}"; #cyan
      color7 = "#${theme.base07}"; #white
    };
  };
}