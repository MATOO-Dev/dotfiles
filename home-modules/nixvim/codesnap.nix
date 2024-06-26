{ ... }:
{
  programs.nixvim.plugins.codesnap = {
    enable = true;
    settings = {
      has_breadcrumbs = true;
      breadcrumbs_separator = "/";
      has_line_number = true;
      mac_window_bar = false;
      save_path = "~/Pictures/Screenshots/";
      code_font_family = "CaskaydiaCoveNF-Mono";
      bg_theme = "default";
      title = "";
      watermark = "";
    };
  };
}
