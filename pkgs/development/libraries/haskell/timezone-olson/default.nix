# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, binary, extensibleExceptions, time, timezoneSeries }:

cabal.mkDerivation (self: {
  pname = "timezone-olson";
  version = "0.1.6";
  sha256 = "0gg1fq85km5d48966a267q6z0wwl1dz88xq88v0l1jlkwd9jsb0z";
  buildDepends = [ binary extensibleExceptions time timezoneSeries ];
  meta = {
    homepage = "http://projects.haskell.org/time-ng/";
    description = "A pure Haskell parser and renderer for binary Olson timezone files";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = with self.stdenv.lib.maintainers; [ ocharles ];
  };
})