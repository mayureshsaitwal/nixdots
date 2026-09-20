{ lib, ... }: {

  home.activation.symlinkConfigs = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    mkdir -p $HOME/.config

    ln -sfn $HOME/nixdots/config/* $HOME/.config/
  '';
}
