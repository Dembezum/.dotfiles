{ config, pkgs, ... }:

{
imports = [
  ../base/media.nix
  ../base/sh.nix
  ../modules/nvim/default.nix
  ./home.nix
];
}

