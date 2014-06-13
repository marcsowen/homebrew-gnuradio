require "formula"

class GrOsmosdr < Formula
  homepage "http://sdr.osmocom.org/trac/wiki/GrOsmoSDR"
  head "git://git.osmocom.org/gr-osmosdr", :shallow => false

  depends_on "cmake" => :build
  depends_on "gnuradio"
  depends_on "librtlsdr"

  def install
    mkdir "build"
    cd "build"

    system "cmake", "..", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
