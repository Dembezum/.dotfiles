{ config, pkgs, ... }:

{
  # Existing Home Manager configuration...
  home.packages = with pkgs; [
    firefox
    discord
    neovim
    kitty
    xclip
    tmux
    htop
    btop
    git
    eza
  ];
}
