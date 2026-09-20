{ pkgs, ... }:

{
  scrolloverview = pkgs.callPackage ./scrolloverview.nix { };
  hyprglass = pkgs.callPackage ./hyprglass.nix { };
}
