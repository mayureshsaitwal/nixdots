{ pkgs, ... }:
let
  pname = "tabout-nvim";
  version = "9a3499480a8e53dcaa665e2836f287e3b7764009";
in
{
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      inherit pname version;
      src = pkgs.fetchFromGitHub {
        owner = "abecodes";
        repo = "tabout.nvim";
        rev = "9a3499480a8e53dcaa665e2836f287e3b7764009";
        hash = "sha256-5T/nefCPCR2K1vySTG0vzh5+6weHinBLahPBL37+VtY=";
      };
    })
  ];

  extraConfigLua = ''
    require("tabout").setup({
      tabkey = "<Tab>",
      backwards_tabkey = "<S-Tab>",
      act_as_tab = true,
      enable_backwards = true,
      completion = true,
      ignore_beginning = false,
      tabouts = {
        { open = "'", close = "'" },
        { open = '"', close = '"' },
        { open = "`", close = "`" },
        { open = "(", close = ")" },
        { open = "[", close = "]" },
        { open = "{", close = "}" },
      },
    })
  '';
}
