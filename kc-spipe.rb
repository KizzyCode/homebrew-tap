class KcSpipe < Formula
  desc "a simple program that can be used to read from/write to a serial device node"
  homepage "https://github.com/KizzyCode/SerialPipe-c"
  url "https://github.com/KizzyCode/SerialPipe-c/archive/refs/tags/0.1.8.tar.gz"
  sha256 "13bd2299a56ab60dd2893a638b29011397ef92e7846f17f603187dde253043c3"

  def install
    system "make"
    bin.install("spipe")
  end
end
