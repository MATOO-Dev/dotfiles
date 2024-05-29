{ pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    # plugins = [
    #
    # ];

    settings = {
      "$mod" = "SUPER";
      input = {
        kb_layout = "de";
        # kb_variant = ",qwertz";
      };
      bind =
        [
          "$mod, F, exec, firefox"
          ", Print, exec, grimblast copy area"
          "$mod, R, exec, rofi -show drun"
          "$mod, Q, exec, kitty"
          "$mod, M, exit"
        ]
        ++ (
          # workspaces
          # binds $mod + [shift +] {1..10} to [move to] workspace {1..10}
          builtins.concatLists (
            builtins.genList (
              x:
              let
                ws =
                  let
                    c = (x + 1) / 10;
                  in
                  builtins.toString (x + 1 - (c * 10));
              in
              [
                "$mod, ${ws}, workspace, ${toString (x + 1)}"
                "$mod SHIFT, ${ws}, movetoworkspace, ${toString (x + 1)}"
              ]
            ) 10
          )
        );
    };
  };

  # xdg.portal = {
  #   enable = true;
  #   extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  # };

  home.packages = with pkgs; [
    dunst
    eww
    libnotify
    rofi-wayland
    waybar
  ];
}
