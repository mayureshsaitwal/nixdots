{
  pkgs,
  inputs,
  main,
  ...
}:
{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    # ./modules/git/default.nix
    # inputs.home-manager.nixosModules.default

    # System Packages
    ./pkgs/system.nix

    # System
    ./modules/system.nix

    # Hyprland
    # ../../modules/wm/hyprland

    # Fonts
    ./fonts.nix

    # NH
    ./nh.nix

    # Environment Variable
    # ./envVar.nix

    # Services
    # ../../modules/services
    # ../../services/default.nix

    # All system services
    # ../../modules/system.nix

    # Overlays
    # ./overlays.nix
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  home-manager = {
    extraSpecialArgs = {
      inherit inputs main;
    };
    users = {
      "${main.username}" = import ./home;
    };
    backupFileExtension = "backup";
  };

  documentation.doc.enable = false;

  # Bootloader.
  # boot.loader.grub.enable = true;
  # boot.loader.grub.devices = [ "nodev" ];
  # boot.loader.grub.efiSupport = true;
  # boot.loader.grub.useOSProber = true;
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = main.hostname; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking = {
    networkmanager.enable = true;
    networkmanager.dns = "systemd-resolved";
    firewall = {
      enable = true;
      allowedTCPPorts = [
        80
        443
        53317
      ];
      allowedUDPPorts = [
        53317
        # {
        #   from = 4000;
        #   to = 4007;
        # }
        # {
        #   from = 8000;
        #   to = 8010;
        # }
      ];
    };
  };

  # Enable Bluetooth
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true; # powers up the default Bluetooth controller on boot
    settings = {
      General = {
        ControllerMode = "bredr";
      };
    };
  };
  services = {
    #   services.resolved = {
    #   enable = true;
    #   fallbackDns = [ "1.1.1.1" "8.8.8.8" ];
    # };
    # services.resolved.enable = true;

    resolved = {
      enable = true;
      settings = {
        Resolve = {
          FallbackDNS = [
            "1.1.1.1"
            "8.8.8.8"
          ];
        };
      };
    };

    blueman.enable = true;
    # Enable the X11 windowing system.
    #services.xserver.enable = true;

    # Enable the GNOME Desktop Environment.
    #services.xserver.displayManager.gdm.enable = true;
    #services.xserver.desktopManager.gnome.enable = true;

    # Configure keymap in X11
    xserver.xkb = {
      layout = "us";
      variant = "";
    };
    haveged.enable = true;

    # Enable CUPS to print documents.
    printing.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
      wireplumber.enable = true;
      extraConfig.pipewire."10-speakers-headphones" = {
        "context.modules" = [
          {
            name = "libpipewire-module-loopback";
            args = {
              "node.name" = "speakers";
              "node.description" = "Speakers";
              "capture.props" = {
                "media.class" = "Audio/Sink";
                "audio.position" = [
                  "FL"
                  "FR"
                ];
              };
              "playback.props" = {
                "target.object" = "alsa_output.pci-0000_09_00.4.analog-stereo";
                "stream.dont-remix" = true;
                "node.passive" = true;
                "audio.position" = [
                  "FL"
                  "FR"
                ];
              };
            };
          }
          {
            name = "libpipewire-module-loopback";
            args = {
              "node.name" = "headphones";
              "node.description" = "Headphones";
              "capture.props" = {
                "media.class" = "Audio/Sink";
                "audio.position" = [
                  "FL"
                  "FR"
                ];
              };
              "playback.props" = {
                # Match this name to your actual sound card output sink from `wpctl status`
                "target.object" = "alsa_output.pci-0000_09_00.4.analog-stereo";
                "stream.dont-remix" = true;
                "node.passive" = true;
                "audio.position" = [
                  "RL"
                  "RR"
                ];
              };
            };
          }
        ];
      };
    };

    # Enable touchpad support (enabled default in most desktopManager).
    libinput.enable = true;

    # nixpkgs.config.packageOverrides = pkgs: {
    #   mpvpaper = pkgs.callPackage ../../custompkgs/mpvpaper/default.nix { };
    # };

    devmon.enable = true;
    gvfs.enable = true;
    udisks2.enable = true;
  };
  # services.gnome.gnome-keyring.enable = true;
  # security.pam.services.login.enableGnomeKeyring = true;

  # Set your time zone.
  time.timeZone = "Asia/Kolkata";
  time.hardwareClockInLocalTime = true;
  services.timesyncd.enable = true;

  # Select internationalisation properties.
  i18n = {
    defaultLocale = "en_IN";
    extraLocales = [
      "en_IN/UTF-8"
    ];
    # extraLocaleSettings = {
    #   LC_ADDRESS = "en_IN.UTF-8";
    #   LC_IDENTIFICATION = "en_IN.UTF-8";
    #   LC_MEASUREMENT = "en_IN.UTF-8";
    #   LC_MONETARY = "en_IN.UTF-8";
    #   LC_NAME = "en_IN.UTF-8";
    #   LC_NUMERIC = "en_IN.UTF-8";
    #   LC_PAPER = "en_IN.UTF-8";
    #   LC_TELEPHONE = "en_IN.UTF-8";
    #   LC_TIME = "en_IN.UTF-8";
    # };
  };

  hardware.alsa.enablePersistence = true;

  # Enable sound with pipewire.
  # hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.${main.username} = {
    isNormalUser = true;
    description = "jd1t";
    extraGroups = [
      "networkmanager"
      "wheel"
      "openrazer"
    ];
    shell = pkgs.zsh;
    # packages = with pkgs; [
    #   #  thunderbird
    # ];
  };

  security.sudo.wheelNeedsPassword = true;

  # security.sudo.extraRules = [
  #   {
  #     groups = [ "wheel" ];
  #     commands = [ "/home/jd1t/bin/hotspot" ];
  #   }
  #   # { groups = [ "wheel" ]; commands = [ "/bin/light" ]; }
  # ];

  # Install Zsh
  programs.zsh.enable = true;

  # Install firefox.
  # programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    git
  ];

  # Zshrc
  # system.userActivationScripts.zshrc = "touch $ZDOTDIR/.zshrc";

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall = {
  #   enable = true;
  #   allowedTCPPorts = [ 53317 ];
  # };
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?
}
