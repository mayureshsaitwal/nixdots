{ pkgs,... }: {
    systemd.services.hotspot = {
    description = "Hotspot";
    path = [ pkgs.linux-router ];

    wantedBy = [ "multi-user.target" ];

    serviceConfig = {
      Type = "forking";
      Restart = "on-failure";
      User = "root";
    };

    script = ''
      lnxrouter --ap wlo1 "Bathroom Camera #4" -p "Qwerty?123" --daemon
    '';
  };
  }
