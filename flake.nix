{
  description = "A flake for usage on non nixos systems";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
    home-manager ={
      url= "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      };
  }; 
  
  outputs = { nixpkgs, home-manager, nix-flatpak, ... } @ inputs:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in 
  {
  homeConfigurations.zayd = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      extraSpecialArgs = { inherit inputs; };
      modules = [ ./home.nix ];
    };
  };
}

