# shell.nix
let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/078d69f03934859a181e81ba987c2bb033eebfc5";
  pkgs = import nixpkgs { config = {}; overlays = []; };
  env = pkgs.bundlerEnv {
    name = "amd-ponstsaintmartin";
    inherit (pkgs) ruby;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
  };
in
  pkgs.stdenv.mkDerivation {
    name = "amd-ponstsaintmartin";
    buildInputs = [env pkgs.ruby];

    shellHook = ''
      exec ${env}/bin/jekyll serve --watch
    '';
  }

