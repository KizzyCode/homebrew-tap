class KcSpipe < Formula
  desc "a simple program that can be used to read from/write to a serial device node"
  homepage "https://github.com/KizzyCode/SerialPipe-c"
  url "https://github.com/KizzyCode/SerialPipe-c/archive/refs/tags/0.1.3.tar.gz"
  sha256 "4e7a859fef44272b044b93d71362beb568cd082eebb2db84123f5ba54656204b"

  def install
    system "make"
    bin.install("spipe")
  end
end
