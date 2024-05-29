{ ... }:
{
  programs.nixvim.opts = {
    number = true;
    relativenumber = true;
    shiftwidth = 4;
    tabstop = 4;
    softtabstop = 4;
    ignorecase = true;
    smartcase = true;
    wrap = false;
    foldmethod = "expr";
    foldlevel = 99;
    showmode = false;
    guicursor = [
      "a:block"
      "a:blinkwait700-blinkoff400-blinkon250"
    ];
  };
}
