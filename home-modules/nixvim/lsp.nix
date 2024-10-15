{ pkgs, ... }:
{
  programs.nixvim.plugins.cmp-nvim-lsp.enable = true;
  programs.nixvim.plugins.lsp = {
    enable = true;
    servers = {
      clangd.enable = true;
      # csharp-ls.enable = false;
      omnisharp.enable = true;
      # gdscript.enable = true;
      java_language_server.enable = false;
      java_language_server.cmd = [ "jdtls -data ././jdt-data" ];
      java_language_server.package = pkgs."jdt-language-server";
      marksman.enable = true;
      nil_ls.enable = true;
      rust_analyzer = {
        enable = true;
        installRustc = true;
        installCargo = true;
      };
      texlab.enable = true;
      tinymist.enable = false;
    };
    preConfig = ''
      vim.diagnostic.config {
        update_in_insert = true
      }
    '';
  };
  programs.nixvim.plugins.nvim-jdtls = {
    enable = false;
    settings.java.grade.enabled = true;
    data = "./.jdt-data";
  };
  programs.nixvim.plugins.lspkind.enable = true;
  programs.nixvim.extraPlugins = [ pkgs.vimPlugins.nvim-lspconfig ];
}
