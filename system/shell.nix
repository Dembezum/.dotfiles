{ pkgs ? import <nixos-unstable> { } }:
with pkgs;

pkgs.mkShell {
  buildInputs = [
    gcc
      clang
      make
      cmake
      binutils
      ninja
      python3
      nodejs
      openssl
      zlib
      gdb
      libclang
      lldb
      valgrind
      htop
      nginx
      glibc
# Add any specific libraries for your project here
# For example, to add GTK development libraries:
# pkgs.gtk3.dev
# pkgs.glib.dev
      ];

# Setting some environment variables, if needed
  shellHook = ''
    export EDITOR=neovim
    echo "Welcome to your development environment!"
    '';
}

