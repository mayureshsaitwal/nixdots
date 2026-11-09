{
  pkgs,
  ...
}:
{
  programs.git = {
    enable = true;
    package = pkgs.git.override { withLibsecret = true; };
    settings = {
      user.name = "mayureshsaitwal";
      user.email = "mayureshsaitwal25@gmail.com";
      init.defaultBranch = "main";

      credential.helper = "libsecret";

      aliases = {
        ga = "add";
        gci = "commit";
        gco = "checkout";
        gs = "status";
        gp = "push";
      };
    };
  };
}
