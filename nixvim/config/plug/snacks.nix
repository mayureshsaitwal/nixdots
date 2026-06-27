{
  plugins.snacks = {
    settings = {
      animate.enabled = true;
      git.enabled = true;
      gitbrowse = {
        enabled = true;
      };
      lazygit.enabled = true;
    };
    indent = {
      indent = {
        enabled = false;
      };
      chunk = {
        enabled = true;
        only_current = true;
        char = {
          arrow = "─";
          corner_top = "╭";
          corner_bottom = "╰";
        };
        hl = "SnacksIndentScope";
      };
    };
  };
  highlight =
    with colors;
    (lib.mkIf (config.plugins.snacks.enable && lib.hasAttr "indent" config.plugins.snacks.settings)) {
      SnacksIndent = {
        fg = base00;
      };
    };
  keymaps = [
    {
      mode = [
        "v"
        "n"
      ];
      key = "<leader>go";
      action = ":lua Snacks.gitbrowse.open()<CR>";
      options = {
        desc = "Open git repo";
      };
    }
    {
      mode = "n";
      key = "<leader>gg";
      action = ":lua Snacks.lazygit.open()<CR>";
      options = {
        desc = "Open LazyGit";
      };
    }
  ];
}
