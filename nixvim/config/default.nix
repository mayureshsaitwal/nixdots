{
  config,
  lib,
  ...
}:
{
  # Import all your configuration modules here
  imports = [
    ./core/options.nix
    ./core/keys.nix
    ./core/sets.nix
    ./core/highlight.nix

    ./plug
  ];
  options = {
    theme = lib.mkOption {
      default = lib.mkDefault "paradise";
      type = lib.types.enum [
        "paradise"
      ];
    };
    assistant = lib.mkOption {
      default = "none";
      type = lib.types.enum [
        "copilot"
        "none"
      ];
    };
  };
  config = {
    # The base16 theme to use, if you want to use another theme, change it in colorscheme.nix
    theme = "paradise";
    extraConfigLua = ''
      _G.theme = "${config.theme}"
    '';
  };
}
