{ pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    clock24 = true;
    newSession = true;
    prefix = "C-Space";
    keyMode = "vi";
    mouse = true;
    baseIndex = 1;
    escapeTime = 5;

    plugins = with pkgs.tmuxPlugins; [
      vim-tmux-navigator
      resurrect
      continuum
      yank
      open
    ];

    extraConfig = ''
      set -g @resurrect-capture-pane-contents 'on'
      set -g @resurrect-strategly-nvim 'session'
      set -g @resurrect-processes 'lazygit'
    '';
    #set-option -g status-position top
  };
}
