{ config, ... }:
{
  programs.nixvim.plugins.notify = {
    enable = true;
    fps = 60;
    timeout = 300;
    render = "default";
    stages = "fade";
    backgroundColour = "#${config.colorScheme.palette.base00}";
    #highlight NotifyERRORBorder guifg=#${theme.base08}
    #highlight NotifyERRORIcon guifg=#${theme.base08}
    #highlight NotifyERRORTitle guifg=#${theme.base08}
    #highlight NotifyWARNBorder guifg=#${theme.base0A}
    #highlight NotifyWARNIcon guifg=#${theme.base0A}
    #highlight NotifyWARNTitle guifg=#${theme.base0A}
    #highlight NotifyINFOBorder guifg=#${theme.base0C}
    #highlight NotifyINFOIcon guifg=#${theme.base0C}
    #highlight NotifyINFOTitle guifg=#${theme.base0C}
  };

  programs.nixvim.keymaps = [
    {
      action = ":NoiceDismiss<CR>";
      key = "<leader>nd";
      mode = "n";
      options.silent = true;
    }
  ];
}
