require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

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
  #depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    mkdir "build"
    chdir "build"

    system "cmake", "..", *std_cmake_args
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test gnuradio`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
