{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    settings.user.name = "mayureshsaitwal";
    settings.user.email = "mayureshsaitwal25@gmail.com";
    package = pkgs.gitFull;
    settings.credential.helper = "libsecret";
    settings.aliases = {
      ga = "add";
      gci = "commit";
      gco = "checkout";
      gs = "status";
      gp = "push";
    };
  };

  # programs.git-credential-oauth = {
  # enable = true;
  # };
}
