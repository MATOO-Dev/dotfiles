{ ... }:
{
  programs.nixvim.plugins.lsp = {
    enable = true;
    servers = {
      clangd.enable = true;
      csharp-ls.enable = true;
      gdscript.enable = true;
      java-language-server.enable = true;
      marksman.enable = true;
      nil_ls.enable = true;
      typst-lsp.enable = true;
    };
  };
}
