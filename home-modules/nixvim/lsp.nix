{ pkgs, ... }:
{
  programs.nixvim.plugins.cmp-nvim-lsp.enable = true;
  programs.nixvim.plugins.lsp = {
    enable = true;
    servers = {
      clangd.enable = true;
      csharp-ls.enable = true;
      gdscript.enable = true;
      java-language-server.enable = true;
      marksman.enable = true;
      nil-ls.enable = true;
      rust-analyzer = {
        enable = true;
        installRustc = true;
        installCargo = true;
      };
      typst-lsp.enable = true;
    };
    preConfig = ''
      vim.diagnostic.config {
        update_in_insert = true
      }
    '';
  };
  programs.nixvim.extraPlugins = [ pkgs.vimPlugins.nvim-lspconfig ];
}
