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
      # open
    ];

    extraConfig = ''
      set -g @resurrect-capture-pane-contents 'on'
      set -g @resurrect-strategly-nvim 'session'
      set -g @resurrect-processes 'lazygit'

      bind c new-window -c "#{pane_current_path}"
      bind % split-window -h -c "#{pane_current_path}"
      bind '"' split-window -v -c "#{pane_current_path}"
      bind k display-popup -E -w 80% -h 80% -d "#{pane_current_path}"
      bind -T popup k detach
    '';
    # bind j display-popup -E -w 80% -h 80% -c "#{pane_current_path}"
    # bind u run-shell 'tmux popup -KER -w 80% -h 80%'
    #set-option -g status-position top
  };
}
