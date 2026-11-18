{
  pkgs,
  ...
}:
{
  programs.git = {
    enable = true;
    package = pkgs.git.override { withLibsecret = true; };

    # Sign with the user's default OpenPGP key. Home Manager points
    # gpg.openpgp.program at its own gnupg package.
    signing = {
      format = "openpgp";
    };

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
