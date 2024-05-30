{ pkgs, ... }:
{
  programs.nixvim.plugins.dap = {
    enable = true;
    extensions = {
      dap-ui.enable = true;
      dap-virtual-text.enable = true;
    };
    adapters = {
      executables = {
        lldb = {
          command = "lldb";
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
          type = "gdb";
          request = "launch";
          name = "Launch C++ debugger";
        }
      ];
    };
  };

  home.packages = with pkgs; [
    lldb
    gdb
  ];
}
