class KcSpipe < Formula
  desc "a simple program that can be used to read from/write to a serial device node"
  homepage "https://github.com/KizzyCode/SerialPipe-c"
  url "https://github.com/KizzyCode/SerialPipe-c/archive/refs/tags/0.1.1.tar.gz"
  sha256 "068a9ab2eb44817a4877e8095828c3ceb8516237d62a999fed48da203ec87f4d"

  def install
    system "make"
    bin.install("spipe")
  end
end
