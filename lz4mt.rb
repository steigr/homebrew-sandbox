require "formula"

class Lz4mt < Formula
  homepage "https://github.com/t-mat/lz4mt"
  head 'git://github.com/t-mat/lz4mt.git', :using => :git
  version 'HEAD'

  # depends_on "cmake" => :build
  # depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "make", "CC=clang"
    bin.install 'lz4mt'
  end
end
