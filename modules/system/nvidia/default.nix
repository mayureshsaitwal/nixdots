{
  pkgs,
  config,
  ...
}:
{
  services.xserver.videoDrivers = [ "nvidia" ];
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  #  services = {
  # #    displayManager.sddm = {
  # #      enable = true;
  # #      autoNumlock = true;
  # # wayland.enable = true;
  # #    };
  #    xserver.videoDrivers = ["nvidia"];
  #    # pipewire = {
  #    #   enable = true;
  #    #   audio.enable = true;
  #    #   pulse.enable = true;
  #    #   alsa = {
  #    #     enable = true;
  #    #     support32Bit = true;
  #    #   };
  #    #   jack.enable = true;
  #    # };
  #  };

  # programs.hyprland = {
  #   # we use this instead of putting it in systemPackages/users
  #   enable = true;
  #   withUWSM = true;
  #   xwayland.enable = true;
  #   # plugins = [
  #   #   (pkgs.callPackage ./plugin.nix { })
  #   # ];
  #   #xdg.configFile.hypr = { source = ../../../configs/ }
  # };

  # hardware.nvidia = {
  #   # Enable modesetting for Wayland compositors (hyprland)
  #   modesetting.enable = true;
  #   # Use the open source version of the kernel module (for driver 515.43.04+)
  #   open = false;
  #   powerManagement.enable = false;
  #   powerManagement.finegrained = false;
  #   # Enable the Nvidia settings menu
  #   nvidiaSettings = true;
  #   # Select the appropriate driver version for your specific GPU
  #   package = config.boot.kernelPackages.nvidiaPackages.stable;
  # };

  # xdg.portal is configured by programs.niri (gnome + gtk portals). Adding the
  # wlr/hyprland portals here would leave stale backends behind for Niri.
  #nixpkgs.config.allowUnfree = true;
  # xdg.portal.enable = true;
  # xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

  # hardware = {
  #   # opengl = {
  #   #   enable = true;
  #   # };
  #   graphics = {
  #     enable = true;
  #     enable32Bit = true;
  #   };
  # };

  # hardware.opengl = {
  #   enable = true;
  #   #driSupport = true;
  #   # driSupport32Bit = true;
  # };
  #
  # hardware.graphics = {
  #   enable = true;
  #   enable32Bit = true;
  # };
  #sound.enable = true;

  # nixpkgs = {
  #   overlays = [
  #     (self: super: {
  #       waybar = super.waybar.overrideAttrs (oldAttrs: {
  #         mesonFlags = oldAttrs.mesonFlags ++ ["-Dexperimental=true" "-Dmpd=enabled"];
  #       });
  #     })
  #   ];
  # };
}
