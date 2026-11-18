{ inputs, pkgs, ... }:
let
  system = pkgs.stdenv.hostPlatform.system;
in
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

      inputs.apple-fonts.packages.${system}.sf-pro
      inputs.apple-fonts.packages.${system}.sf-pro-nerd

      inputs.apple-fonts.packages.${system}.sf-mono
      inputs.apple-fonts.packages.${system}.sf-mono-nerd

      inputs.apple-fonts.packages.${system}.sf-compact
      inputs.apple-fonts.packages.${system}.sf-compact-nerd

      inputs.apple-fonts.packages.${system}.ny
      inputs.apple-fonts.packages.${system}.ny-nerd
    ];

    fontconfig = {
      enable = true;
      defaultFonts = {
        serif = [ "Noto Serif" ];
        sansSerif = [ "Noto Sans" ];
        monospace = [ "JetBrainsMono Nerd Font" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };
}
