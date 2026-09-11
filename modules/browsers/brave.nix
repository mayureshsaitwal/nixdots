{ pkgs, ... }: {
  programs.chromium = {
    enable = true;
    package = pkgs.brave;

    extensions = [
      # { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; } # ublock origin
      { id = "ddkjiahejlhfcafbddmgiahcphecmpfh"; } # ublock origin lite
      { id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; } # Dark Reader
      { id = "dbepggeogbaibhgnhhndojpepiihcmeb"; } # Vimium

      # --- ADDED EXTENSIONS ---
      { id = "clngdbkpkpeebahjckkjfobafhncgmne"; } # Stylus
      { id = "jasgdaocbaecgedhnnmhhhcconlhbaho"; } # WhatFont
      { id = "fbfonkgmligbgnmffcoppclocikepogb"; } # Smooth Cursorify
    ];

    commandLineArgs = [
      "--ozone-platform-hint=auto"
      "--enable-features=ImpulseScrollAnimations"
    ];
  };
}
