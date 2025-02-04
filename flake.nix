{
  description = "A trading data scraper";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    poetry2nix = {
      url = "github:nix-community/poetry2nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, flake-utils, poetry2nix }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        p2nix = poetry2nix.lib.mkPoetry2Nix { inherit pkgs; };
        python = pkgs.python312;
        example-app = p2nix.mkPoetryApplication { projectDir = self; };
      in {
        apps.default = {
          type = "app";
          program = "${example-app}/bin/example-app";
        };

        # Add default package
        packages.default = example-app;

        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            poetry
            python
            # Development tools
            black
            isort
            pylint
            python312Packages.pytest
          ];

          shellHook = ''
            echo "Welcome to the Trading Scraper development environment!"
            echo "Available commands:"
            echo "  poetry install    - Install dependencies"
            echo "  poetry run pytest - Run tests"
            echo "  poetry run black . - Format code"
            echo "  poetry run isort . - Sort imports"
            echo "  poetry run pylint example_app tests - Lint code"
          '';
        };
      });
}

