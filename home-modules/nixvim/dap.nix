{ pkgs, ... }:
{
  programs.nixvim.plugins.dap = {
    enable = true;
    extensions = {
      dap-virtual-text.enable = true;
    };
    adapters = {
      executables = {
        lldb = {
          command = "lldb-dap";
        };
        gdb = {
          command = "gdb";
          args = [
            "-i"
            "dap"
          ];
        };
      };
      servers = { };
    };
    configurations = {
      cpp = [
        {
          name = "Launch C++ debugger";
          request = "launch";
          type = "gdb";
          program.__raw = ''
            function()
            local path = vim.fn.input({
              prompt = 'Path to executable: ',
              default = vim.fn.getcwd() .. '/',
              completion = 'file',
            })

            return (path and path ~= "") and path or require("dap").ABORT
            end
          '';
        }
      ];
    };
  };

  programs.nixvim.plugins.dap.extensions.dap-ui = {
    enable = true;
  };

  programs.nixvim.keymaps = [
    {
      action = ":lua require('dap').toggle_breakpoint()<CR>";
      key = "<leader>bb";
      mode = "n";
      options.silent = true;
    }
    {
      action = ":lua require('dap').continue()<CR>";
      key = "<F5>";
      mode = "n";
      options.silent = true;
    }
    {
      action = ":lua require('dapui').toggle()<CR>";
      key = "<leader>dap";
      mode = "n";
      options.silent = true;
    }
  ];

  home.packages = with pkgs; [
    lldb
    gdb
  ];
}
