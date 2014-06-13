require "formula"

class Gnuradio < Formula
  homepage "http://gnuradio.org"
  url "http://gnuradio.org/releases/gnuradio/gnuradio-3.7.3.tar.gz"
  sha1 "bf208448cbeca8ac1dabca9bbd6fa3f2185a9582"
  head "http://gnuradio.org/git/gnuradio.git"

  depends_on "cmake" => :build
  depends_on "Cheetah" => :python
  depends_on "lxml" => :python
  depends_on "numpy" => :python
  depends_on "scipy" => :python
  depends_on "matplotlib" => :python
  depends_on "boost"
  depends_on "pkg-config"
  depends_on "swig"
  depends_on "fftw"
  depends_on "orc"
  depends_on "gsl"
  depends_on "cppunit"

  def install
    mkdir "build"
    chdir "build"

    system "cmake", "..", *std_cmake_args
    system "make", "install"
  end
end
