{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Meta: core utilities
    git
    curl
    wget
    vim
    man
    which
    file
    tree
    zip
    unzip
    xz
    p7zip

    # Terminal & shell
    eza
    ripgrep
    fd
    bat
    jq
    cowsay
    stow
    lazygit
    zsh-fast-syntax-highlighting
    zsh-autosuggestions

    # System monitoring & hardware info
    btop
    lm_sensors
    ethtool
    pciutils
    usbutils

    # Networking & storage
    iw
    net-tools
    wifitui
    hostapd
    linux-router
    util-linux
    ntfs3g
    go-mtpfs
    gvfs
    udisks
    udiskie

    # Wayland & desktop ricing
    wl-clipboard
    wofi-emoji
    mako
    tofi
    libnotify
    feh
    nsxiv
    bibata-cursors
    colorls

    # Applications
    brave
    chromium
    vlc
    obsidian
    discord

    # Media & music
    mpvpaper
    yt-dlp
    ffmpeg

    # Audio
    alsa-utils
    pavucontrol

    # Development toolchain
    direnv
    rustc
    cargo
    gnumake
    clang
    clang-tools
    cmake
    gdb
    libgcc
    gcc
    nodejs
    yarn

    # Language servers & formatters
    stylua
    nixfmt
    prettier
    prettierd
    lua-language-server
    basedpyright
    rustfmt
    rust-analyzer
    javascript-typescript-langserver
    ruff
    vale

    # Python environment
    (python313.withPackages (
      ps: with ps; [
        pandas
        requests
        pip
        flask
        debugpy
        isort
        beautifulsoup4
        black
        # osmnx
        jupyter-core
        pyyaml
        nbformat
        nbclient
        ipykernel
        ebooklib
        # python-lsp-ruff
      ]
    ))

    # Nix tooling
    nh
    nix-output-monitor
    nix-prefetch-github

    # Editor extras
    vimPlugins.friendly-snippets
    live-server

    # Gaming
    gamemode
    mangohud
    heroic
    lutris
  ];
}
