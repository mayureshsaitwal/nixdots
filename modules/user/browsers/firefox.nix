{ config, ... }: {
  programs.firefox = {
    enable = true;
    configPath = "${config.xdg.configHome}/mozilla/firefox";

    policies = {
      ExtensionSettings = {
        # Smooth Cursorify
        "{b3f79b6d-0801-4b49-bf18-5ff3f8d24c68}" = {
          installation_mode = "force_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/smooth-cursorify/latest.xpi";
        };

        # WhatFont
        "{dcb8caa2-63fa-41aa-a508-a45c5990ebdd}" = {
          installation_mode = "force_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/zjm-whatfont/latest.xpi";
        };

        # # Stylus
        # "{c102b0e7-893d-444f-917c-fc530de507c9}" = {
        #   installation_mode = "force_installed";
        #   install_url = "https://addons.mozilla.org/firefox/downloads/latest/stylus/latest.xpi";
        # };

        # uBlock Origin
        "uBlock0@raymondhill.net" = {
          installation_mode = "force_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
        };

        # Dark Reader
        "addon@darkreader.org" = {
          installation_mode = "force_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/darkreader/latest.xpi";
        };

        # Vimium
        "{d7742d87-e61d-4b78-b8a1-b469842139fa}" = {
          installation_mode = "force_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/vimium-ff/latest.xpi";
        };
      };

      # Essential preference configurations
      Preferences = {
        # Ensures extensions activate immediately on rebuild without manual clicks
        "extensions.autoDisableScopes" = 0;
      };
    };

    # Default profile behavior rules
    profiles.default = {
      id = 0;
      name = "default";

      # Premium smooth scrolling settings
      settings = {
        "general.smoothScroll.msdPhysics.enabled" = true;
        "general.smoothScroll.mouseWheel.durationMaxMS" = 400;
        "general.smoothScroll.mouseWheel.durationMinMS" = 200;
      };

      # Native declarative user styles (no Stylus database needed).
      # userContent = ''
      #   /* Example: Force a custom style on GitHub */
      #   @-moz-document domain("github.com") {
      #     body {
      #       font-family: "Inter", monospace !important;
      #     }
      #   }
      # '';
    };
  };
}
