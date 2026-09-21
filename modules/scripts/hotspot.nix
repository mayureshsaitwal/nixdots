{ pkgs, ... }: {
  systemd.services.hotspot = {
    description = "Hotspot";
    path = [
      pkgs.linux-router
      pkgs.util-linux
    ];

    wantedBy = [ "multi-user.target" ];

    serviceConfig = {
      Type = "forking";
      Restart = "on-failure";
      User = "root";
    };

    script = ''
      lnxrouter --ap wlo1 "Kitne GB The? - Poore 50GB" -p "Qwerty?123" --daemon
    '';
  };
}
