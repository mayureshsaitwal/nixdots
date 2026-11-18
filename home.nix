{
  config,
  main,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./pkgs/home.nix
    ./modules/user
    inputs.zen-browser.homeModules.beta
  ];

  home = {
    inherit (main) username;
    homeDirectory = "/home/${main.username}";
    sessionPath = [
      "$HOME/.local/bin"
      "$HOME/bin"
    ];
  };

  programs.zen-browser = {
    enable = true;
    setAsDefaultBrowser = false;
    profiles.default = {
      id = 0;
      name = "Default";
      isDefault = true;

      presets = {
        betterfox.enable = true;
      };
    };
  };

  home.pointerCursor = {
    enable = true;
    x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 24;
  };

  gtk = {
    enable = true;

    gtk4.theme = config.gtk.theme;
    theme = {
      package = pkgs.flat-remix-gnome;
      name = "Flat-Remix-Darkest";
    };

    iconTheme = {
      package = pkgs.fluent-icon-theme;
      name = "Fluent";
    };

    font = {
      name = "Sans";
      size = 12;
    };
  };
  home.backupFileExtension = "backup";
  home.stateVersion = "26.05";
}
