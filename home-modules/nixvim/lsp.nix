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
      java-language-server.cmd = [ "jdtls -data ././jdt-data" ];
      java-language-server.package = pkgs."jdt-language-server";
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
  programs.nixvim.plugins.nvim-jdtls = {
    enable = true;
    settings.java.grade.enabled = true;
    data = "./.jdt-data";
  };
  programs.nixvim.plugins.lspkind.enable = true;
  programs.nixvim.extraPlugins = [ pkgs.vimPlugins.nvim-lspconfig ];
}
