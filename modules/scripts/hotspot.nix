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
      lnxrouter --ap wlo1 "Munni Badnaam Hui, Router Ke Liye" -p "Qwerty?123" --daemon
    '';
  };
}
