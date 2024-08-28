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
      action = ":lua require('treesj').toggle<CR>";
      key = "<leader>tj";
      mode = "n";
      options.silent = true;
    }
    {
      action = ":Trouble diagnostics toggle<CR>";
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
      action = "<cmd>lua vim.lsp.buf.rename()<CR>";
      key = "<F2>";
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
    {
      action.__raw = ''
        function()
          return ":<C-U>" .. vim.v.count1 .. "bnext<CR>"
        end
      '';
      key = "gt";
      mode = "n";
      options.silent = true;
      options.expr = true;
    }
    {
      action.__raw = ''
        function()
          return ":<C-U>" .. vim.v.count1 .. "bprev<CR>"
        end
      '';
      key = "gT";
      mode = "n";
      options.silent = true;
      options.expr = true;
    }
    # {
    #   action.__raw = ''
    #     function()
    #       return col('.') == 1 ? "<Esc>" : "<Esc>l"
    #     end
    #   '';
    #   key = "<Esc>";
    #   mode = "i";
    #   options.silent = true;
    #   options.expr = true;
    #   lua = true;
    # }
  ];
}
