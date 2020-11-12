{ pkgs ? import <nixos-unstable> {} }:

let
  build = { name, src, ... }: pkgs.mkDerivation {
    buildInputs = [
      pkgs.arduino-cli
    ];
  };
in
pkgs.mkShell {
  buildInputs = [
    pkgs.arduino-cli
    pkgs.arduino
    pkgs.avrdude

    # keep this line if you use bash
    pkgs.bashInteractive
  ];
}
