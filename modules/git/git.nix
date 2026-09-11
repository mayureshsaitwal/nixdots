{
  programs.git = {
    enable = true;
    userName = "mayureshsaitwal";
    userEmail = "mayureshsaitwal25@gmail.com";
    aliases = {
      ga = "add";
      gci = "commit";
      gco = "checkout";
      gs = "status";
      gp = "push";
    };
    extraConfig = {
      credential.helper = "store";
    };
  };
}
