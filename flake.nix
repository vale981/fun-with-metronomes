{
  description = "A standard LaTeX document/paper template with Nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      forEachSupportedSystem =
        f:
        nixpkgs.lib.genAttrs supportedSystems (
          system:
          f {
            pkgs = nixpkgs.legacyPackages.${system};
          }
        );
    in
    {
      packages = forEachSupportedSystem ({ pkgs }: {
        default = pkgs.stdenvNoCC.mkDerivation {
          name = "latex-document";
          src = ./.;
          nativeBuildInputs = [
            pkgs.texlive.combined.scheme-full
          ];
          buildPhase = ''
            export HOME=$(mktemp -d)
            latexmk -pdf -interaction=nonstopmode index.tex
          '';
          installPhase = ''
            mkdir -p $out
            if [ -f output/index.pdf ]; then
              cp output/index.pdf $out/
            else
              cp index.pdf $out/
            fi
          '';
        };
      });

      devShells = forEachSupportedSystem ({ pkgs }: {
        default = pkgs.mkShell {
          packages = with pkgs; [
            texlive.combined.scheme-full
            texlab
            tex-fmt
          ];
        };
      });
    };
}
