{ config, lib, ... }:
let
  theme = config.colorScheme.palette;
in
{
  programs.starship.enable = true;
  programs.starship.enableBashIntegration = false;
  programs.starship.enableZshIntegration = true;

  #Configuration goes here
  programs.starship.settings = {
    add_newline = true;
    scan_timeout = 10;

    format = lib.strings.concatStrings [
      "$os"
      "[](bg:#${theme.base0A} fg:#${theme.base09})"
      "$directory"
      "[](bg:#${theme.base0B} fg:#${theme.base0A})"
      "$git_branch"
      "[](bg:#${theme.base0C} fg:#${theme.base0B})"
      "$git_status"
      "[](fg:#${theme.base0C})"
      " "
    ];

    right_format = lib.strings.concatStrings [
      "$character"
      "[](fg:#${theme.base0D})"
      "$time"
      "[](fg:#${theme.base0D})"
    ];

    os = {
      disabled = false;
      symbols.NixOS = "";
      format = "[ $symbol  ](bg:#${theme.base09} fg:#${theme.base01})";
    };

    directory = {
      disabled = false;
      format = "[ $path ](bg:#${theme.base0A} fg:#${theme.base01})";
      truncation_length = 1;
      truncation_symbol = "../";
      substitutions = {
        "~" = " ";
        "Downloads" = " ";
        "Documents" = "󰈙 ";
        "Repos" = " ";
        "dotfiles" = " ";
      };
    };

    git_branch = {
      disabled = false;
      symbol = "󰘬";
      format = "[ $symbol $branch ](bg:#${theme.base0B} fg:#${theme.base01})";
    };

    git_status = {
      disabled = false;
      ahead = " 󰁝\${count} ";
      behind = " 󰁅\${count} ";
      untracked = " ?\${count} ";
      modified = " !\${count} ";
      staged = " +\${count} ";
      renamed = " 󰄾\${count} ";
      deleted = " x\${count} ";
      format = "[$all_status$ahead$behind](bg:#${theme.base0C} fg:#${theme.base01})";
    };

    time = {
      disabled = false;
      time_format = "%R";
      format = "[$time](bg:#${theme.base0D} fg:#${theme.base01})";
    };

    character = {
      format = "$symbol ";
      success_symbol = "[](fg:#${theme.base0B})";
      error_symbol = "[](fg:#${theme.base08})";
    };
  };
}
