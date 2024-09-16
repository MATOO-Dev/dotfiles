{ pkgs, ... }:
{
  programs.nixvim.plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_on_error = true;
      format_on_save = {
        lspFallback = true;
        timeoutMs = 500;
      };
      formatters_by_ft = {
        c = [ "astyle" ];
        cpp = [ "astyle" ];
        cs = [ "csharpier" ];
        java = [ "astyle" ];
        nix = [ "nixfmt" ];
        rust = [ "rustfmt" ];
        typst = [ "typstyle" ];
      };
    };
  };

  programs.nixvim.keymaps = [
    {
      action = ":lua require('conform').format()<CR>";
      key = "<leader>fm";
      mode = "n";
      options.silent = true;
    }
  ];

  programs.nixvim.extraPackages = with pkgs; [
    astyle
    nixfmt-rfc-style
    rustfmt
    csharpier
  ];
}
