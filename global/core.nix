{ pkgs, ..}:

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
      cmake
      pkg-config
      fontconfig
      freetype
  ];
}
