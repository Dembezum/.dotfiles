{ config, pkgs, ... }:

{
  # Existing Home Manager configuration...
  home.packages = with pkgs; [
    firefox
    discord
    spotify
    nodejs_21
  ];
}

