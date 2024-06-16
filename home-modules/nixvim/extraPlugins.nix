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
        (pkgs.vimUtils.buildVimPlugin {
          name = "typst-preview.nvim";
          src = pkgs.fetchFromGitHub {
            owner = "chomosuke";
            repo = "typst-preview.nvim";
            rev = "15eaaffc0a2d8cd871f485f399d1d67ed3322a0b";
            hash = "sha256-33clHm4XRfbYKSYrofm1TEaUV2UCIFVqNAc6Js8sTzY=";
          };
        })
      ];

    extraConfigLua = ''
      require("treesj").setup({use_default_keymap = false, max_join_length = 500})
      require("typst-preview").setup()
    '';
  };
}
