{
  pkgs,
  ...
}:
{
  # Note: yt-dlp, mpvpaper, live-server and libnotify are already installed
  # system-wide via ../pkgs/system.nix, so they are not duplicated here.
  home.packages = with pkgs; [
    # Applications (messaging, files, documents)
    telegram-desktop
    nautilus
    foliate
    exercism
    qbittorrent-enhanced
    localsend
    smplayer

    # Music & media
    spotdl
    ytmdl
    mpv
    playerctl
    pulsemixer
    ffmpeg_7

    # Wayland & Hyprland ricing
    wofi
    hyprpicker
    hyprpaper
    grimblast
    cliphist
    quickshell

    # Editors & misc
    kitty
    neovide
    deadlock-mod-manager
    polychromatic

    # Secret management
    libsecret
    seahorse
  ];
}
