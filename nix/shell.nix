{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    bashInteractive
    git
    curl
    # Adicione outras dependências aqui
  ];
}
