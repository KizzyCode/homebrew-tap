class KcSpipe < Formula
  desc "a simple program that can be used to read from/write to a serial device node"
  homepage "https://github.com/KizzyCode/SerialPipe-c"
  url "https://github.com/KizzyCode/SerialPipe-c/archive/refs/tags/0.1.7.tar.gz"
  sha256 "259478ffaca8ccad641e6bbe3ad79eb7c225b6d596d84bd3a2b876e43fe98f6e"

  def install
    system "make"
    bin.install("spipe")
  end
end
