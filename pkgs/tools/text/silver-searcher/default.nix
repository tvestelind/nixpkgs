{stdenv, fetchFromGitHub, autoreconfHook, pkgconfig, pcre, zlib, lzma}:

stdenv.mkDerivation rec {
  name = "silver-searcher-${version}";
  version = "0.30.0";

  src = fetchFromGitHub {
    owner = "ggreer";
    repo = "the_silver_searcher";
    rev = "${version}";
    sha256 = "07fz0hyisy3kisisxy558lfmmjdxq03x5ljdfxfkpw0xbfwgz14j";
  };

  NIX_LDFLAGS = stdenv.lib.optionalString stdenv.isLinux "-lgcc_s";

  buildInputs = [ autoreconfHook pkgconfig pcre zlib lzma ];

  meta = with stdenv.lib; {
    homepage = https://github.com/ggreer/the_silver_searcher/;
    description = "A code-searching tool similar to ack, but faster";
    maintainers = with maintainers; [ madjar jgeerds ];
    platforms = platforms.all;
    license = licenses.asl20;
  };
}
