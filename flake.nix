{
  description = "LaTex Build";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [ texliveFull ];
        };

        packages.default = pkgs.stdenvNoCC.mkDerivation rec {
          name = "generate-pdf";
          src = self;
          buildInputs = with pkgs; [ coreutils texliveFull ];
          phases = [ "unpackPhase" "buildPhase" "installPhase" ];
          buildPhase = ''
            export PATH="${pkgs.lib.makeBinPath buildInputs}";
            mkdir -p .cache/texmf-var
            env TEXMFHOME=.cache TEXMFVAR=.cache/texmf-var \
              latexmk -interaction=nonstopmode -pdf resume.tex
          '';
          installPhase = ''
            mkdir -p $out
            cp resume.pdf $out/
          '';
        };
      }
    );
}
