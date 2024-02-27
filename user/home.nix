{ config, pkgs, lib, ... }:

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
];

home.username = "nixtop";
home.homeDirectory = "/home/nixtop";

home.file = { };

home.sessionVariables = {
  EDITOR = "nvim";
};

programs.neovim.withNodeJs = true;

programs.home-manager.enable = true;

home.stateVersion = "23.11";
}
