{ config, pkgs, ... }:

{
# Existing Home Manager configuration...
  home.packages = with pkgs; [
    nodejs_21
      kitty 
      xclip 
      tmux 
      htop 
      btop 
      tree 
      git 
      eza 
  ];

}

