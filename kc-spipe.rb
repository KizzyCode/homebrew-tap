class KcSpipe < Formula
  desc "a simple program that can be used to read from/write to a serial device node"
  homepage "https://github.com/KizzyCode/SerialPipe-c"
  url "https://github.com/KizzyCode/SerialPipe-c/archive/refs/tags/0.1.3.tar.gz"
  sha256 "666e5e486a96d4643b434955cbe5b5decef18ca13dac48225d4f08af0b98c19f"

  def install
    system "make"
    bin.install("spipe")
  end
end
