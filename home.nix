{ config, pkgs, lib, ... }:


{
    imports = [
        ./global/sh.nix
    ];

   home.username = "nixtop";
   home.homeDirectory = "/home/nixtop";
   home.stateVersion = "23.11";

   home.packages = with pkgs; [
# Add packages here
   ripgrep
   neofetch
   ];

   home.file = {
# Configuration for dotfiles and other files
   };

   home.sessionVariables = {
      EDITOR = "nvim";
   };

   programs.kitty = {
      enable = true;
      extraConfig = ''
         font_family JetBrains Mono
         font_size 12
         background_opacity 0.9
         opacity 0.9
         colors 16
         font_weight regular
         font_style regular 
         allow_remote_control yes
         scrollback_lines 10000
         enable_audio_bell = false;
         '';
   };

      programs.home-manager.enable = true;
}
