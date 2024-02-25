{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.gcc
    pkgs.clang
    pkgs.make
    pkgs.cmake
    pkgs.ninja
    pkgs.python3
    pkgs.nodejs
    pkgs.openssl
    pkgs.zlib
    pkgs.gdb
    pkgs.valgrind
    pkgs.htop
    pkgs.nginx
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

