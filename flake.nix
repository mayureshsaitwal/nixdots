{
  description = "Jd1t's Nixos Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim.url = "./nixvim";

    # alejandra.url = "github:kamadorueda/alejandra/3.0.0";
    # alejandra.inputs.nixpkgs.follows = "nixpkgs";

    #nixvim.url = "github:jd1t25/nixvim";
    # nixvim.url = "path:./nvim";
    # nixvim.inputs.nixpkgs.follows = "nixpkgs";

    # zen-browser.url = "github:ch4og/zen-browser-flake";
    # zen-browser.url = "path:./custompkgs/zen";

  };

  outputs =
    {
      self,
      nixpkgs,
      ...
    }@inputs:
    let
      main = {
        username = "jd1t";
        hostname = "gan45ha";
        system = "x86_64-linux";
      };
    in
    {
      # formatter.${system} = inputs.alejandra;
      nixosConfigurations.${main.hostname} = nixpkgs.lib.nixosSystem {
        system = main.system;
        specialArgs = {
          inherit inputs main;
        };
        modules = [
          ./configuration.nix
          inputs.home-manager.nixosModules.default
          {
            environment.systemPackages = [
              # inputs.alejandra.defaultPackage.${system}
              # inputs.nixvim.packages.${pkgs.system}.default
              inputs.nixvim.packages.${main.system}.nvim
              # inputs.zen-browser.packages."${system}".default
            ];
          }
          {
            nixpkgs.config.allowUnfree = true;
          }
        ];
      };

      # homeConfigurations = {
      #   "${main.username}@${main.hostname}" = inputs.home-manager.lib.homeManagerConfiguration {
      #     pkgs = import nixpkgs {
      #       system = "${main.system}";
      #     };
      #     extraSpecialArgs = {
      #       inherit main inputs;
      #     };
      #     modules = [
      #       (import ./home.nix)
      #     ];
      #   };
      # };
    };
}
