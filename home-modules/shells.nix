{ pkgs, ... }:
let
  aliases = {
    nv = "nvim";
    tma = "tmux a";
    open = "xdg-open";
    buildHome = "/home/matoo/dotfiles/scripts/buildHome.sh";
    buildDesktop = "/home/matoo/dotfiles/scripts/buildDesktop.sh";
    buildLaptop = "/home/matoo/dotfiles/scripts/buildLaptop.sh";
    buildAll = "/home/matoo/dotfiles/scripts/buildAll.sh";
    updateFlake = "/home/matoo/dotfiles/scripts/updateFlake.sh";
    upgradeAll = "/home/matoo/dotfiles/scripts/upgradeAll.sh";
    autoclean = "/home/matoo/dotfiles/scripts/autoclean.sh";
    bootWindows = "/home/matoo/dotfiles/scripts/bootWindows.sh";
    ls = "ls --color";
  };
in
{
  # imports = [ ./starshipV2.nix ];

  home.packages = with pkgs; [
    bashInteractive
    starship
    zoxide
    zsh
    zsh-fzf-tab
    zsh-fzf-history-search
  ];

  programs.bash = {
    enable = true;
    enableCompletion = true;
    shellAliases = aliases;
  };

  programs.zsh = {
    enable = true;
    shellAliases = aliases;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    history = {
      size = 5000;
      share = true;
      ignoreDups = true;
      ignoreAllDups = true;
    };
    historySubstringSearch.enable = true;
    initExtra = ''
      zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
      zstyle ':completion:*' list-colors "''${(s.:.)LS_COLORS}"
    '';
    plugins = [
      {
        name = "zsh-autosuggestions";
        src = pkgs.zsh-autosuggestions;
        file = "share/zsh-autosuggestions/zsh-autosuggestions.zsh";
      }
    ];
  };

  programs.zoxide = {
    enable = true;
    #enableBashIntegration = true;
    enableZshIntegration = true;
    options = [ "--cmd j" ];
  };

  programs.fzf.enableZshIntegration = true;
}
