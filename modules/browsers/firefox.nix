{ config, ... }: {
  # ... your existing programs.chromium block remains unchanged ...

  programs.firefox = {
    enable = true;
    configPath = "${config.xdg.configHome}/mozilla/firefox";

    policies = {
      ExtensionSettings = {
        "smooth-cursorify@kirasam" = {
          installation_mode = "force_installed";
          install_url = "https://mozilla.org";
        };

        "{60fb5c03-5100-4740-9e8c-8f43063af65c}" = {
          installation_mode = "force_installed";
          install_url = "https://mozilla.org";
        };

        "{7a7c0a9d-ab3c-4b1e-acc5-8a7f17cf1b56}" = {
          installation_mode = "force_installed";
          install_url = "https://mozilla.org";
        };

        "uBlock0@raymondhill.net" = {
          installation_mode = "force_installed";
          install_url = "https://mozilla.org";
        };
        # Dark Reader
        "addon@darkreader.org" = {
          installation_mode = "force_installed";
          install_url = "https://mozilla.org";
        };
        # Vimium
        "{d774bba0-2570-4ddd-83d9-955f9edd7083}" = {
          installation_mode = "force_installed";
          install_url = "https://mozilla.org";
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

      # --- BONUS: NATIVE DECLARATIVE USERSTYLES WITHOUT AN EXTENSION ---
      # If you want to inject custom site styles directly via Nix without dealing
      # with Stylus databases, you can use Firefox's native userContent.css engine:
      userContent = ''
        /* Example: Force a custom style on GitHub */
        @-moz-document domain("github.com") {
          body {
            font-family: "Inter", monospace !important;
          }
        }
      '';
    };
  };
}
