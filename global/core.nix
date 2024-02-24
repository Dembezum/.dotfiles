{ pkgs, ...}:

{
# System wide packages
  environment.systemPackages = with pkgs; [
      killall
      usbutils
      gnumake
      lm_sensors
      home-manager
      stdenv
      glibc
      gcc
      binutils
      clang
      curl
      wget
      cmake
      pkg-config
      fontconfig
      freetype
  ];
}
