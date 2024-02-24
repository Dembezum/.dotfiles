{ config, pkgs, ... }:

{
  # Existing Home Manager configuration...
  home.packages = with pkgs; [
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
