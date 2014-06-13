require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class GrOsmosdr < Formula
  homepage "http://sdr.osmocom.org/trac/wiki/GrOsmoSDR"
  head "git://git.osmocom.org/gr-osmosdr", :shallow => false

  # depends_on "cmake" => :build
  #depends_on :x11 # if your formula requires any X11/XQuartz components
  depends_on "cmake" => :build
  depends_on "gnuradio"
  depends_on "librtlsdr"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    mkdir "build"
    cd "build"

    system "cmake", "..", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test gqrx`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
