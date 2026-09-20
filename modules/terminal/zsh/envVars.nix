_: {
  programs.zsh.sessionVariables = {
    # FZF_DEFAULT_OPTS = "--color=bg+:#293739,bg:#1B1D1E,border:#808080,spinner:#E6DB74,hl:#7E8E91,fg:#F8F8F2,header:#7E8E91,info:#A6E22E,pointer:#A6E22E,marker:#F92672,fg+:#F8F8F2,prompt:#F92672,hl+:#F92672";
    FZF_CTRL_T_COMMAND = "find . -type f -not -path './.git/*'";
    FZF_CTRL_T_OPTS = "--no-sort --layout=reverse --height=50% --border --bind 'enter:become(nvim {})'";
  };
}
