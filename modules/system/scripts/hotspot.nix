{ pkgs, ... }: {
  systemd.services.hotspot = {
    description = "Hotspot";
    path = [
      pkgs.linux-router
      pkgs.util-linux
    ];

    wantedBy = [ "multi-user.target" ];
    after = [
      "network.target"
      "NetworkManager.service"
    ];
    wants = [ "NetworkManager.service" ];

    serviceConfig = {
      # lnxrouter stays in the foreground without --daemon and handles
      # SIGTERM, so systemd can supervise it directly.
      Type = "simple";
      Restart = "on-failure";
      RestartSec = 5;
      User = "root";
    };

    script = ''
      exec lnxrouter --ap wlo1 "Kitne GB The? - Poore 50GB" -p "Qwerty?123"
    '';
  };
}
