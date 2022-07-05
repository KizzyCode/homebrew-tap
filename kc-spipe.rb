class KcSpipe < Formula
  desc "a simple program that can be used to read from/write to a serial device node"
  homepage "https://github.com/KizzyCode/SerialPipe-c"
  url "https://github.com/KizzyCode/SerialPipe-c/archive/refs/tags/0.1.0.tar.gz"
  sha256 "cb03fdfed6f584bb2fa370536e5450f73adc7c89e67edeb760ce299e0aa70525"

  def install
    system "make"
    bin.install("spipe")
  end
end
