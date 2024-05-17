{ pkgs, ... }:
{
  programs.nixvim = {
    extraPlugins =
      with pkgs.vimPlugins;
      [
        vim-move
        treesj
      ]
      ++ [
        (pkgs.vimUtils.buildVimPlugin {
          name = "CodeSnap";
          src = pkgs.fetchFromGitHub {
            owner = "mistricky";
            repo = "codesnap.nvim";
            rev = "v1.3.1";
            hash = "sha256-nS/bAWsBQ1L4M9437Yp6FdmHoogzalKlLIAXnRZyMp0=";
          };
        })
      ];

    extraConfigLua = ''
      require("treesj").setup({use_default_keymap = false, max_join_length = 500})
    '';
  };
}
