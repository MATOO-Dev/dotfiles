{ ... }:
{
  imports = [
    # ---------- Screenshots ---------- #
    ./codesnap.nix
    # ---------- Debugger ---------- #
    ./dap.nix
    # ---------- Autoformatting ---------- #
    ./formatting.nix
    # ---------- LSP integration ---------- #
    ./lsp.nix
    # ---------- Notifications ---------- #
    ./notifications.nix
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
        { name = "nvim_lsp"; }
        { name = "cmp_nvim_lsp"; }
        { name = "path"; }
        { name = "buffer"; }
        { name = "luasnip"; }
        { name = "cmp_luasnip"; }
        { name = "friendly-snippets"; }
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

    # ---------- Gitignore ---------- #
    gitignore.enable = true;

    # ---------- Godot ---------- #
    godot.enable = true;

    # ---------- Training wheels ---------- #
    hardtime = {
      enable = true;
      settings.disable_mouse = false;
    };

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
          "1" = "<C-1>";
          "2" = "<C-2>";
          "3" = "<C-3>";
          "4" = "<C-4>";
        };
      };
    };

    # ---------- Highlight hovered Words ---------- #
    illuminate.enable = true;

    # ---------- Quickly jump around text (like vimium) ---------- #
    leap.enable = true;

    # ---------- Additional linter ---------- #
    lint.enable = true;

    # ---------- Snippets --------- #
    luasnip.enable = true;
    cmp_luasnip.enable = true;
    friendly-snippets.enable = true;

    # ---------- Vim-Nix ---------- #
    nix.enable = true;

    # ---------- Floating cmdline ---------- #
    noice = {
      enable = false;
      settings.presets = {
        bottom_search = true;
        long_message_to_split = true;
      };
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
    vim-surround.enable = true;

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

    # ---------- Seamlessly navigate to tmux ---------- #
    tmux-navigator.enable = true;

    # ---------- Syntax highlighting ---------- #
    treesitter = {
      enable = true;
      folding = true;
      settings.indent.enable = true;
    };

    # ---------- Error list ---------- #
    trouble = {
      enable = true;
      # settings.action_keys = {
      #   jump_close = "<CR>";
      #   jump = "o";
      # };
    };

    # ---------- Typst integration ---------- #
    typst-vim = {
      enable = true;
      # settings.conceal_math = true;
    };
    # TODO: Add typst-preview.nvim
    # TODO: Add typst-conceal.vim
    # TODO: Add cord.vim
    # TODO: Add compiler.nvim

    # ---------- Undo trees ---------- #
    undotree.enable = true;

    # ---------- Undo trees ---------- #
    web-devicons.enable = true;
  };
}
