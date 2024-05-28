{
  description = "LaTex Build";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    devShells.x86_64-linux.default = 
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in pkgs.mkShell {
        buildInputs = with pkgs; [ 
          texliveFull
        ];
      };

    packages.x86_64-linux.default = 
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in pkgs.stdenvNoCC.mkDerivation rec {
        name = "hello";
        src = self;
        buildInputs = with pkgs; [
          pkgs.coreutils 
          pkgs.texliveFull
        ];
        phases = ["unpackPhase" "buildPhase" "installPhase"];
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
  };
}
