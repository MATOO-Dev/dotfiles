{ ... }:
{
  programs.nixvim.plugins.lualine = {
    enable = true;

    componentSeparators = {
      left = "|";
      right = "|";
    };

    sections = {
      lualine_a = [ "mode" ];
      lualine_b = [ "diagnostics" ];
      lualine_c = [ "buffers" ];
      lualine_x = [ "filetype" ];
      lualine_y = [ "branch" ];
      lualine_z = [ "location" ];
    };
  };
}
