{ pkgs ? import <nixpkgs> {} }:
pkgs.stdenv.mkDerivation {
  name = "orquestrador-central-env";
  src = ./.;
  buildInputs = [ pkgs.bash ];
}
