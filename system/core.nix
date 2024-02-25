{ config, pkgs, ... }:

{
  # Existing Home Manager configuration...
  home.packages = with pkgs; [
    nodejs_21
    neovim
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
