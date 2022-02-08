{ compiler ? "ghc8104"
, enableDhall ? false
, enableSwagger ? true
, swaggerWrapperFormat ? false
, nixpkgs ? ./nix/nixpkgs.nix
, pkgs ? import ./nix/pkgs.nix {
    inherit nixpkgs compiler enableDhall enableSwagger swaggerWrapperFormat;
  }
}:
{
  proto3-suite-boot = pkgs.haskellPackages.proto3-suite-boot;

  proto3-suite = pkgs.haskellPackages.proto3-suite;
}
