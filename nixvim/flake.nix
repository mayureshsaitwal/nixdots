{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixvim,
      ...
    }:
    let
      system = "x86_64-linux";

      pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
        };
      };

      nvim = nixvim.legacyPackages.${system}.makeNixvimWithModule {
        pkgs = pkgs;
        # module = ./config.nix;
        module = ./config;
      };
    in
    {
      packages.${system}.nvim = nvim;
    };
}
