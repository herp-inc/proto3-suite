{ compiler
, enableDhall
, enableSwagger
, swaggerWrapperFormat
, nixpkgs ? ./nixpkgs.nix
}:

import nixpkgs {
  overlays = [
    (import ./overlays/haskell-packages.nix {
      inherit compiler enableDhall enableSwagger swaggerWrapperFormat;
    })
  ];
}
