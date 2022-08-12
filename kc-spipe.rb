class KcSpipe < Formula
  desc "a simple program that can be used to read from/write to a serial device node"
  homepage "https://github.com/KizzyCode/SerialPipe-c"
  url "https://github.com/KizzyCode/SerialPipe-c/archive/refs/tags/0.1.2.tar.gz"
  sha256 "9a7e2cce55de2583e0c14797a62509cc05e501415d4ada87e578774990e63d1a"

  def install
    system "make"
    bin.install("spipe")
  end
end
