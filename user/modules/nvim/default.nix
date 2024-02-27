# ~/.config/nixpkgs/neovim.nix

{ config, pkgs, ... }:

{
  home.packages = [
    # Install Neovim package
    pkgs.neovim
  ];
}
