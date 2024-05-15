{ config, ... }:
{
  imports = [
  # ---------- LSP integration ---------- #
  ./lsp.nix
  # ---------- Status bar ---------- #
  ./lualine.nix
];

programs.nixvim.plugins = {
  # ---------- Automatically close parentheses etc. ---------- #
  autoclose.enable = true;

  # ---------- Autocompletion ---------- #
  cmp = {
    enable = true;
    autoEnableSources = true;
    settings.sources = [
      {name = "nvim_lsp";}
      {name = "path";}
      {name = "buffer";}
    ];
    settings.mapping = {
      "<Tab>" = "cmp.mapping.confirm({select = true})";
      "<C-Space>" = "cmp.mapping.complete()";
      "<Down>" = "cmp.mapping.select_next_item()";
      "<C-j>" = "cmp.mapping.select_next_item()";
      "<Up>" = "cmp.mapping.select_prev_item()";
      "<C-k>" = "cmp.mapping.select_prev_item()";
    };
  };

  # ---------- Commenting ---------- #
  comment = {
    enable = true;
    settings.mappings = {
      basic = true;
      extra = false;
    };
  };

  # ---------- Git integration ---------- #
  fugitive.enable = true;

  # ---------- Fuzzy finder ---------- #
  fzf-lua.enable = true;

  # ---------- Training wheels ---------- #
  hardtime.enable = true;

  # ---------- Quickly change between buffers ---------- #
  harpoon = {
    enable = true;
    #enableTelescope = true;
    keymaps = {
      addFile = "<leader>a";
      toggleQuickMenu = "<C-e>";
      navNext = "<C-nn>";
      navPrev = "<C-np>";
      navFile = {
        "1" = "<C-h>";
        "2" = "<C-j>";
        "3" = "<C-k>";
        "4" = "<C-l>";
      };
    };
  };

  # ---------- Quickly jump around text (like vimium) ---------- #
  leap.enable = true;

  # ---------- Vim-Nix ---------- #
  nix.enable = true;

  # ---------- Floating cmdline ---------- #
  noice = {
    enable = true;
    #view = "cmdline";
  };

  # ---------- Obsidian integration ---------- #
  obsidian = {
    enable = true;
    settings = {
      dir = "~/Informatik - Game Engineering (B.Sc.)";
    };
  };

  # ---------- File browser ---------- #
  oil = {
    enable = true;
    settings.keymaps = {
      "q" = "actions.close";
      "-" = "actions.parent";
      "<bs>" = "actions.parent";
      "<tab>" = "actions.select";
    };
  };

  # ---------- Quickly surround text ---------- #
  surround.enable = true;

  # ---------- Class outlines ---------- #
  tagbar.enable = true;

  # ---------- Fuzzy finder, but fancy ---------- #
  telescope = { 
    enable = true;
    keymaps = {
      "<leader>ff" = "find_files";
      "<leader>gf" = "git_files";
    };
  };

  # ---------- Syntax highlighting ---------- #
  treesitter = {
    enable = true;
    folding = true;
  };

  # ---------- Error list ---------- #
  trouble = {
    enable = true;
    settings.action_keys = {
      jump_close = "<CR>";
      jump = "o";
    }; 
  };

  # ---------- Typst integration ---------- #
  typst-vim.enable = true;
  # TODO: Add typst-preview.nvim
  # TODO: Add typst-conceal.vim

  # ---------- Undo trees ---------- #
  undotree.enable = true;
};
}
