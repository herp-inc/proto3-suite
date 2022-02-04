args:

let
  # To calculate sha256, call the next command:
  # $ nix-prefetch-url --unpack https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz
  # nixpkgs release 21.05
#  rev = "7e9b0dff974c89e070da1ad85713ff3c20b0ca97";
#  sha256 = "1ckzhh24mgz6jd1xhfgx0i9mijk6xjqxwsshnvq789xsavrmsc36";
  # nixpkgs release 21.11
  rev = "a7ecde854aee5c4c7cd6177f54a99d2c1ff28a31";
  sha256 = "162dywda2dvfj1248afxc45kcrg83appjd0nmdb541hl7rnncf02";

  nixpkgs = builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
    inherit sha256;
  };
in import nixpkgs ({ config = { }; } // args)




