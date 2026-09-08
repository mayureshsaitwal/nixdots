{ pkgs, ... }:
{
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      liberation_ttf
      fira-code
      fira-code-symbols
      mplus-outline-fonts.githubRelease
      commit-mono
      martian-mono
      mona-sans
      azeret-mono
      work-sans
      nerd-fonts.fira-mono
      nerd-fonts.jetbrains-mono
      nerd-fonts.ubuntu
    ];

    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = [ "ubuntu-mono" ];
        sansSerif = [ "ubuntu-sans" ];
        serif = [ "ubuntu" ];
      };
    };
  };
}
