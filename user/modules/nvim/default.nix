# ~/.config/nixpkgs/neovim.nix

{ config, pkgs, ... }:

let
  # Customizable configuration options
  neovimConfig = {
    enable = true;
    # You can add more configuration options here
  };
in

{
  home.packages = [
    # Install Neovim package
    pkgs.neovim
  ];

  # Set Neovim configuration
  programs.neovim = neovimConfig;
}
