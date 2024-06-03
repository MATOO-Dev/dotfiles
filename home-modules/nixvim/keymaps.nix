{ ... }:
{
  programs.nixvim.keymaps = [
    {
      # action = ":Ex<CR>";
      action = ":Oil<CR>";
      key = "<leader>ex";
      mode = "n";
      options.silent = true;
    }
    {
      action = "<C-u>zz";
      key = "<C-u>";
      mode = "n";
      options.silent = true;
    }
    {
      action = "<C-d>zz";
      key = "<C-d>";
      mode = "n";
      options.silent = true;
    }
    {
      action = ":UndotreeToggle<CR>:UndotreeFocus<CR>";
      key = "<leader>ut";
      mode = "n";
      options.silent = true;
    }
    {
      action = "<C-w>";
      key = "<leader>w";
      mode = "n";
      options.silent = false;
    }
    {
      action = ":noh<CR>";
      key = "<leader>nh";
      mode = "n";
      options.silent = true;
    }
    {
      action = ":Oil<CR>";
      key = "<leader>ol";
      mode = "n";
      options.silent = true;
    }
    {
      action = "require('treesj').toggle";
      key = "<leader>tj";
      mode = "n";
      options.silent = true;
      lua = true;
    }
    {
      action = ":TroubleToggle<CR>";
      key = "<leader>tr";
      mode = "n";
      options.silent = true;
    }
    {
      action = "nzz";
      key = "n";
      mode = "n";
      options.silent = true;
    }
    {
      action = "Nzz";
      key = "N";
      mode = "n";
      options.silent = true;
    }
    {
      action = ":TagbarOpenAutoClose<CR>";
      key = "<leader>oo";
      mode = "n";
      options.silent = true;
    }
    {
      action = "<cmd>lua vim.lsp.buf.definition()<CR>";
      key = "gd";
      mode = "n";
      options.silent = true;
    }
    {
      action = "<cmd>lua vim.lsp.buf.declaration()<CR>";
      key = "gD";
      mode = "n";
      options.silent = true;
    }
    {
      action = "<cmd>lua vim.lsp.buf.implementation()<CR>";
      key = "gi";
      mode = "n";
      options.silent = true;
    }
    {
      action = ":bprev<CR>";
      key = "<C-A-h>";
      mode = "n";
      options.silent = true;
    }
    {
      action = ":bnext<CR>";
      key = "<C-A-l>";
      mode = "n";
      options.silent = true;
    }
    {
      action = ":bd<CR>";
      key = "<leader>bq";
      mode = "n";
      options.silent = true;
    }
    {
      action = ":lua require('harpoon.mark').set_current_at(1)<CR>";
      key = "<leader>1";
      mode = "n";
      options.silent = true;
    }
    {
      action = ":lua require('harpoon.mark').set_current_at(2)<CR>";
      key = "<leader>2";
      mode = "n";
      options.silent = true;
    }
    {
      action = ":lua require('harpoon.mark').set_current_at(3)<CR>";
      key = "<leader>3";
      mode = "n";
      options.silent = true;
    }
    {
      action = ":lua require('harpoon.mark').set_current_at(4)<CR>";
      key = "<leader>4";
      mode = "n";
      options.silent = true;
    }
    {
      action = "o<Esc>";
      key = "<CR>";
      mode = "n";
      options.silent = true;
    }
    {
      action = "O<Esc>";
      key = "<S-CR>";
      mode = "n";
      options.silent = true;
    }
    {
      action = "Gzz";
      key = "G";
      mode = "n";
      options.silent = true;
    }
  ];
}
