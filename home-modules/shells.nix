{ pkgs, ... }:
let
  aliases = {
      nv = "nvim";
      open = "xdg-open";
      buildHome = "/home/matoo/dotfiles/scripts/buildHome.sh";
      buildSystem = "/home/matoo/dotfiles/scripts/buildSystem.sh";
      buildAll = "/home/matoo/dotfiles/scripts/buildAll.sh";
      updateFlake = "/home/matoo/dotfiles/scripts/updateFlake.sh";
      upgradeAll = "/home/matoo/dotfiles/scripts/upgradeAll.sh";
      autoclean = "/home/matoo/dotfiles/scripts/autoclean.sh";
  };
in
{
  imports = [ ./starship.nix ];

  home.packages = with pkgs; [
    bashInteractive
    starship
    zoxide
    zsh
    zsh-powerlevel10k
  ];

  programs.bash = {
    enable = true;
    enableCompletion = true;
    shellAliases = aliases;
  };

  programs.zsh = {
    enable = true;
    shellAliases = aliases;
    initExtra = ''
    autoload -Uz compinit && compinit
    zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
    '';
    #source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme;
    #source /home/matoo/dotfiles/imports/p10k.zsh;
    plugins = [
      {
        name = "zsh-autosuggestions";
        src = pkgs.fetchFromGitHub {
          owner = "zsh-users";
          repo = "zsh-autosuggestions";
          rev = "v0.4.0";
          sha256 = "0z6i9wjjklb4lvr7zjhbphibsyx51psv50gm07mbb0kj9058j6kc";
        };
      }
    ];
  };

  programs.zoxide = {
    enable = true;
    #enableBashIntegration = true;
    enableZshIntegration = true;
    options = [ "--cmd j" ];
  };
}
