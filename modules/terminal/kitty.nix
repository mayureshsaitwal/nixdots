_: {
  programs.kitty = {
    enable = true;
    shellIntegration.enableZshIntegration = true;
    font.name = "FiraMono Nerd Font";
    settings = {
      confirm_os_window_close = 0;
      dynamic_background_opacity = true;
      enable_audio_bell = false;
      mouse_hide_wait = "-1.0";
      window_padding_width = 20;
      background_opacity = "0.5";
      background_blur = 5;
      sync_to_monitor = true;
      cursor_trail = 3;
      cursor_trail_decay = "0.1 0.45";
      cursor_trail_start_threshold = 2;
    };
  };
}
