{ pkgs, ... }:
{
  programs.nixvim = {
    extraPlugins = with pkgs.vimPlugins; [
      vim-move
      treesj
    ];

    extraConfigLua = ''
      require("treesj").setup({use_default_keymap = false, max_join_length = 500})
    '';
  };
}
