require "formula"

class Gqrx < Formula
  homepage "http://gqrx.dk"
  url "http://sourceforge.net/projects/gqrx/files/2.2.0/gqrx-2.2.0-src.tar.gz"
  sha1 "824c32bfe4b41a1126545680baedef25753361aa"
  head "https://github.com/csete/gqrx.git"

  depends_on "pkg-config" => :build
  depends_on "qt"
  depends_on "gr-osmosdr"

  def install
    mkdir "build"
    cd "build"

    system "qmake", ".."
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
