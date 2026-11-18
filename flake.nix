{
  description = "Jd1t's Nixos Config";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim.url = "./nixvim";
    # qml-language-server.url = "github:cushycush/qml-language-server";

    apple-fonts = {
      url = "github:Lyndeno/apple-fonts.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };
  };

  outputs =
    inputs@{
      nixpkgs,
      home-manager,
      ...
    }:
    let
      main = {
        username = "jd1t";
        hostname = "gan45ha";
        system = "x86_64-linux";
      };
      pkgs = import nixpkgs {
        inherit (main) system;
        config.allowUnfree = true;
      };
      inherit (nixpkgs) lib;
    in
    {
      nixosConfigurations = {
        gan45ha = lib.nixosSystem {
          inherit (main) system;
          specialArgs = { inherit inputs main; };
          modules = [
            ./configuration.nix
            home-manager.nixosModules.default
            {
              # Installs the home-manager CLI tool automatically, so
              # `home-manager switch --flake .#jd1t` keeps working alongside
              # `nixos-rebuild switch`.
              environment.systemPackages = [
                home-manager.packages.${main.system}.default
                inputs.nixvim.packages.${main.system}.nvim
              ];

              # Home Manager is also applied by nixos-rebuild / boot.
              home-manager = {
                extraSpecialArgs = { inherit inputs main; };
                useGlobalPkgs = true;
                useUserPackages = true;
                users.jd1t = import ./home.nix;
              };
            }
          ];
        };
      };

      # Standalone output: `home-manager switch --flake .#jd1t`
      homeConfigurations."jd1t" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = { inherit inputs main; };
        modules = [ ./home.nix ];
      };
    };
}
