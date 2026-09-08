{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    package = pkgs.git.override { withLibsecret = true; };
    settings = {
      credential.helper = "libsecret";
    };
    settings = {
      user.name = "mayureshsaitwal";
      user.email = "mayureshsaitwal25";
      init.defaultBranch = "main";
      aliases = {
        ga = "add";
        gci = "commit";
        gco = "checkout";
        gs = "status";
        gp = "push";
      };
    };
  };
  services.hyprpolkitagent.enable = true;

  # programs.git-credential-oauth = {
  # enable = true;
  # };
}
