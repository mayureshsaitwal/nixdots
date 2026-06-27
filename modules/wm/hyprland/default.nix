{
  pkgs,
  config,
  ...
}: {
  services.xserver.videoDrivers = ["nvidia"];
  hardware.graphics.enable = true;
  hardware.nvidia = {

    # Modesetting is required.
    modesetting.enable = true;

    # Nvidia power management. Experimental, and can cause sleep/suspend to fail.
    # Enable this if you have graphical corruption issues or application crashes after waking
    # up from sleep. This fixes it by saving the entire VRAM memory to /tmp/ instead 
    # of just the bare essentials.
    powerManagement.enable = false;

    # Fine-grained power management. Turns off GPU when not in use.
    # Experimental and only works on modern Nvidia GPUs (Turing or newer).
    powerManagement.finegrained = false;

    # Use the NVidia open source kernel module (not to be confused with the
    # independent third-party "nouveau" open source driver).
    # Support is limited to the Turing and later architectures. Full list of 
    # supported GPUs is at: 
    # https://github.com/NVIDIA/open-gpu-kernel-modules#compatible-gpus 
    # Only available from driver 515.43.04+
    open = true;

    # Enable the Nvidia settings menu,
	# accessible via `nvidia-settings`.
    nvidiaSettings = true;

    # Optionally, you may need to select the appropriate driver version for your specific GPU.
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

  programs.hyprland = {
    # we use this instead of putting it in systemPackages/users
    enable = true;
    xwayland.enable = true;
    #xdg.configFile.hypr = { source = ../../../configs/ }
  };

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

  #nixpkgs.config.allowUnfree = true;
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [pkgs.xdg-desktop-portal-gtk];

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
