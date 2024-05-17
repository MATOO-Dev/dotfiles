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

    plugins = with pkgs.tmuxPlugins; [
      vim-tmux-navigator
      resurrect
      yank
    ];
  };
}
