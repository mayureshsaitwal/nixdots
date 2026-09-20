{ pkgs, lib, ... }:

let
  hyprglassPlugin = pkgs.stdenv.mkDerivation {
    pname = "hyprglass";
    version = "0.8.1";

    src = pkgs.fetchFromGitHub {
      owner = "hyprnux";
      repo = "hyprglass";
      rev = "v0.8.1";
      hash = "sha256-yUU0gKu1CXqpUQBtyb3IWNBYZ1bCAm99mfTUV7ceJyg=";
    };

    nativeBuildInputs = with pkgs; [
      pkg-config
    ];
    buildInputs = [ pkgs.hyprland ] ++ pkgs.hyprland.buildInputs;

    installPhase = ''
      runHook preInstall
      mkdir -p $out/lib
      cp hyprglass.so $out/lib/
      runHook postInstall
    '';
  };
in
{
  home.packages = [ hyprglassPlugin ];

  home.activation.copyHyprglassPlugin = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    mkdir -p $HOME/.config/hypr/plugins
    cp -f ${hyprglassPlugin}/lib/hyprglass.so $HOME/.config/hypr/plugins/hyprglass.so
    chmod +w $HOME/.config/hypr/plugins/hyprglass.so
  '';
}
