{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    pulsemixer
    kitty
    firefox
    wofi
    telegram-desktop
    playerctl
    # grimblast
    #chromium
    cliphist
    #mpvpaper
    nautilus
    spotdl
    ytmdl
    yt-dlp
    ffmpeg_7
    mpv
    hyprpicker
    mpvpaper
    hyprpaper
    grimblast
    smplayer
    # nix-init
    # nix-update
    # inputs.nixvim.packages.${pkgs.system}.default
    # floorp
    qbittorrent-enhanced
    # eza
    # teams-for-linux
    localsend
    live-server
    foliate
    exercism
    libsecret
    seahorse
    deadlock-mod-manager
    # AudioRelay

    # openrazer-daemon
    polychromatic
    quickshell

    # vscode-extensions.vadimcn.vscode-lldb
  ];
}
