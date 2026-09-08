{ pkgs, ... }:

let
  cursor_theme = pkgs.stdenvNoCC.mkDerivation {
    pname = "cursor_theme";
    version = "1.0";

    src = ../../assets/cursor_theme/win_11.zip;

    nativeBuildInputs = [ pkgs.unzip ];

    installPhase = ''
      mkdir -p $out
      unzip $src -d $out

      mv "$out/dark" "$out/win11"
      rm -rf "$out/light"
    '';
  };
in
{
  home.file.".local/share/icons/win11".source = cursor_theme;
}
