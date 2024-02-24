{
  description = "My first flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }: 
    let 
    system = "x86_64-linux";


  Define an overlay that allows unfree packages
    allowUnfreeOverlay = final: prev: {
      nixpkgs.config = {
        allowUnfree = true;
      };
    };

# Apply the overlay to the package set
  pkgs = import nixpkgs {
    inherit system;
    overlays = [ allowUnfreeOverlay ];
  };

  pkgs = nixpkgs.legacyPackages.${system};
  lib = nixpkgs.lib;
  in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit system;
        modules = [ ./configuration.nix ];
      };
    };
    homeConfigurations = {
      nixtop = home-manager.lib.homeManagerConfiguration { 
        inherit pkgs;
        modules = [ ./home.nix ];
      };
    };
  };
}
