{ config, pkgs, lib, ... }:

# Allow unfree packages
{
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };

imports = [
  ./user/base/sh.nix
  ./user/base/media.nix
  ./user/base/tmux.nix
#  ./system/displaylink.nix
];

home.username = "nixtop";
home.homeDirectory = "/home/nixtop";
home.stateVersion = "23.11";

home.file = {
# Configuration for dotfiles and other files

};

home.sessionVariables = {
  EDITOR = "nvim";
};

programs.home-manager.enable = true;
}
