{ pkgs ? import <nixpkgs> { } }:

with pkgs;
pkgs.stdenv.mkDerivation {
  name = "shell";
  buildInputs = [
    nodejs_20 # optional. Needed for me for copilot
    git
    gh
  ];
}
