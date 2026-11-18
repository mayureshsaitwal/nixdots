{
  lib,
  config,
  pkgs,
  ...
}:
{
  imports = [
    ./envVars.nix
  ];

  programs.zsh = {
    enable = true;
    autocd = true;
    dotDir = "${config.xdg.configHome}/zsh";
    enableCompletion = true;
    autosuggestion.enable = true;
    # histSize = 10000;
    # histFile = "$HOME/.zsh_history";
    history = {
      save = 10000;
      path = "$ZDOTDIR/.zsh_history";
      extended = true;
      expireDuplicatesFirst = true;
    };

    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
        "direnv"
        "bgnotify"
        "sudo"
        "extract"
        "history"
        "command-not-found"
        "colored-man-pages"
        "copyfile"
        "copypath"
      ];
    };

    # shellAliases are emitted after oh-my-zsh, so they win over OMZ aliases
    # (ll, ls, gcm, gcl, ga, gco, gp, ...).
    shellAliases = {
      ls = "colorls";
      ll = "colorls -al";
      la = "colorls -A";
      "." = "cd ..";

      v = "nvim";
      lg = "lazygit";
      pmx = "pulsemixer";
      clr = "clear";

      rbld = "(cd ~/dots; git add .; sudo nix flake update; sudo nixos-rebuild switch --flake . --option eval-cache false)";
      sng = "sudo nix-collect-garbage -d";
      ng = "nix-collect-garbage --delete-old";
      nd = "nix develop path:$(pwd)";
      ns = "nix-shell";

      zrc = "nvim ~/dots/modules/user/terminal/zsh/default.nix";
      ndc = "nvim ~/dots";
      nfc = "nvim ~/dots/flake.nix";
      alx = "nvim ~/dots/modules/user/terminal/zsh/default.nix";
      spkgs = "nvim ~/dots/pkgs/system.nix";
      hpkgs = "nvim ~/dots/pkgs/home.nix";

      hx = "niri-session";
      hs = "sudo systemctl restart hotspot";

      gcl = "git clone";
      gcm = "git commit -m";
      ga = "git add";
      gco = "git checkout";
      gs = "git status";
      gp = "git push";
      gph = "git push";
      gpl = "git pull";
    };

    plugins = with pkgs; [
      {
        name = "zsh-autopair";
        src = fetchFromGitHub {
          owner = "hlissner";
          repo = "zsh-autopair";
          rev = "449a7c3d095bc8f3d78cf37b9549f8bb4c383f3d";
          hash = "sha256-3zvOgIi+q7+sTXrT+r/4v98qjeiEL4Wh64rxBYnwJvQ=";
        };
        file = "autopair.zsh";
      }

      {
        name = "fast-syntax-highlighting";
        src = fetchFromGitHub {
          owner = "zdharma-continuum";
          repo = "fast-syntax-highlighting";
          rev = "cf318e06a9b7c9f2219d78f41b46fa6e06011fd9";
          hash = "sha256-RVX9ZSzjBW3LpFs2W86lKI6vtcvDWP6EPxzeTcRZua4=";
        };
        file = "fast-syntax-highlighting.plugin.zsh";
      }
      {
        name = "fzf-tab";
        src = fetchFromGitHub {
          owner = "aloxaf";
          repo = "fzf-tab";
          rev = "v1.3.0";
          hash = "sha256-8atbysoOyCBW2OYKmdc91x9V/Mk3eyg3hvzvhJpQ32w=";
        };
        file = "fzf-tab.plugin.zsh";
      }
      {
        name = "zsh-bat";
        src = fetchFromGitHub {
          owner = "fdellwing";
          repo = "zsh-bat";
          rev = "4673376";
          hash = "sha256-TTuYZpev0xJPLgbhK5gWUeGut0h7Gi3b+e00SzFvSGo=";
        };
        file = "zsh-bat.plugin.zsh";
      }
      {
        name = "zsh-you-should-use";
        src = fetchFromGitHub {
          owner = "MichaelAquilina";
          repo = "zsh-you-should-use";
          rev = "1.11.1";
          hash = "sha256-a/DNVxD55Bh6AmSh5C4z4JpZM5xUiQgoaFoDgYPQsbo=";
        };
        file = "you-should-use.plugin.zsh";
      }
    ];

    initContent = lib.mkOrder 500 ''
      fzf-open() {
        local selected

        selected=$(
          find . \( -type f -o -type d \) -not -path './.git/*' |
            fzf \
              --no-sort \
              --layout=reverse \
              --height=50% \
              --border
        ) || return

        if [[ -d "$selected" ]]; then
          cd -- "$selected"
        else
          nvim -- "$selected"
        fi

        zle reset-prompt
      }

      zle -N fzf-open
      source ${./notify.zsh}
      bindkey '^U' autosuggest-accept
      bindkey '^F' fzf-open
    '';
  };
}
