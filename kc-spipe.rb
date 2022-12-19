class KcSpipe < Formula
  desc "a simple program that can be used to read from/write to a serial device node"
  homepage "https://github.com/KizzyCode/SerialPipe-c"
  url "https://github.com/KizzyCode/SerialPipe-c/archive/refs/tags/0.1.4.tar.gz"
  sha256 "425575c537bc415e73a685812e92d9523dafbb5613fd63bb1d4b5e34347a8cae"

  def install
    system "make"
    bin.install("spipe")
  end
end
