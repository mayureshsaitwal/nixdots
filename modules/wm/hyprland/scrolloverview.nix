{ pkgs, lib, ... }:

let
  scrollOverviewPlugin = pkgs.stdenv.mkDerivation {
    pname = "hyprland-scroll-overview";
    version = "2026-03-01";

    src = pkgs.fetchFromGitHub {
      owner = "yayuuu";
      repo = "hyprland-scroll-overview";
      rev = "5e96ae2";
      hash = "sha256-clDeTM5itsJPvqpbEkbWUmuPROsz2+YUnTpqsjQDMqU=";
    };

    nativeBuildInputs = with pkgs; [
      cmake
      pkg-config
    ];
    buildInputs = [ pkgs.hyprland ] ++ pkgs.hyprland.buildInputs;

    installPhase = ''
      runHook preInstall
      mkdir -p $out/lib
      cp libscrolloverview.so $out/lib/
      runHook postInstall
    '';
  };
in
{
  home.packages = [ scrollOverviewPlugin ];
  home.activation.copyHyprlandPlugin = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    mkdir -p $HOME/.config/hypr/plugins
    cp -f ${scrollOverviewPlugin}/lib/libscrolloverview.so $HOME/.config/hypr/plugins/libscrolloverview.so
    chmod +w $HOME/.config/hypr/plugins/libscrolloverview.so
  '';
}
