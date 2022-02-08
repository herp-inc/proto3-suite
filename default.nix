{ compiler ? "ghc8104"
, enableDhall ? false
, enableSwagger ? true
, swaggerWrapperFormat ? false
, nixpkgs ? ./nix/nixpkgs.nix
, pkgs ? import ./nix/pkgs.nix {
    inherit nixpkgs compiler enableDhall enableSwagger swaggerWrapperFormat;
  }
}:

let
  pkgs = import ./nix/pkgs.nix {
    inherit compiler enableDhall enableSwagger swaggerWrapperFormat;
  };

in {
  proto3-suite-boot = pkgs.haskellPackages.proto3-suite-boot;

  proto3-suite = pkgs.haskellPackages.proto3-suite;
}
