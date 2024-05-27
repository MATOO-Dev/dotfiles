{ config, lib, ... }:
let
  theme = config.colorScheme.palette;
in
{
  programs.starship.enable = true;
  programs.starship.enableBashIntegration = true;
  programs.starship.enableZshIntegration = true;

  #Configuration goes here
  programs.starship.settings = {
    add_newline = true;
    scan_timeout = 10;

    format = lib.strings.concatStrings [
      "$os"
      "$directory"
      "$git_branch"
      "$git_status"
      " "
    ];

    right_format = lib.strings.concatStrings [
      "$character(fg:#${theme.base0D})"
      "$time(fg:#${theme.base0D})"
    ];

    os = {
      disabled = false;
      symbols.NixOS = "";
      format = "[ $symbol ](fg:#${theme.base09})";
    };

    directory = {
      disabled = false;
      format = "[ $path ](fg:#${theme.base0A})";
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
      format = "[ $symbol $branch ](fg:#${theme.base0B})";
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
      format = "[$all_status$ahead$behind](fg:#${theme.base0C})";
    };

    time = {
      disabled = false;
      time_format = "%R";
      format = "[$time](fg:#${theme.base0D})";
    };

    character = {
      format = "$symbol ";
      success_symbol = "[](fg:#${theme.base0B})";
      error_symbol = "[](fg:#${theme.base08})";
    };
  };
}
