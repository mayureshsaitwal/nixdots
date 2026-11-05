{ inputs, pkgs, ... }:
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
      fantasque-sans-mono

      inputs.apple-fonts.packages.${pkgs.system}.sf-pro
      inputs.apple-fonts.packages.${pkgs.system}.sf-pro-nerd

      inputs.apple-fonts.packages.${pkgs.system}.sf-mono
      inputs.apple-fonts.packages.${pkgs.system}.sf-mono-nerd

      inputs.apple-fonts.packages.${pkgs.system}.sf-compact
      inputs.apple-fonts.packages.${pkgs.system}.sf-compact-nerd

      inputs.apple-fonts.packages.${pkgs.system}.ny
      inputs.apple-fonts.packages.${pkgs.system}.ny-nerd
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
