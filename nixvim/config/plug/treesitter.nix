{ pkgs, ... }:
{
  filetype.extension.liq = "liquidsoap";

  plugins.treesitter = {
    enable = true;

    languageRegister.liq = "liquidsoap";

    grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;

    settings = {
      highlight.enable = true;
      indent.enable = true;
    };

    folding.enable = true;
  };
}
