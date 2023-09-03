{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    pkg-config
    alsa-lib.dev
    xorg.libX11.dev
    xorg.libXi.dev
    xorg.libXtst
  ];
}
