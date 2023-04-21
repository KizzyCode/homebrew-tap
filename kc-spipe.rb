class KcSpipe < Formula
  desc "a simple program that can be used to read from/write to a serial device node"
  homepage "https://github.com/KizzyCode/SerialPipe-c"
  url "https://github.com/KizzyCode/SerialPipe-c/archive/refs/tags/0.1.6.tar.gz"
  sha256 "0e7d7543ff3d6606c3686204393643dc3b67fa4cced63e5e7c1186b7bbdd7023"

  def install
    system "make"
    bin.install("spipe")
  end
end
