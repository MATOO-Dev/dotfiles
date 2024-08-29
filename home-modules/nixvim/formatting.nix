{ pkgs, ... }:
{
  programs.nixvim.plugins.conform-nvim = {
    enable = true;
    notifyOnError = true;
    formatOnSave = {
      lspFallback = true;
      timeoutMs = 500;
    };
    formattersByFt = {
      c = [ "astyle" ];
      cpp = [ "astyle" ];
      cs = [ "csharpier" ];
      nix = [ "nixfmt" ];
      rust = [ "rustfmt" ];
      java = [ "astyle" ];
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
