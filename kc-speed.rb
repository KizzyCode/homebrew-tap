class KcSpeed < Formula
  desc "A simple tool to measure the current and average transfer-speed of the data piped through"
  homepage "https://github.com/KizzyCode/Speed"
  head "https://github.com/KizzyCode/Speed.git"

  def install
    # Build executable
    system "#{ENV.cc} -O3 -o speed ./src/speed.c"

    # Install executable
    bin.install "speed"
  end

  test do
    assert system("stat #{bin}/speed") != true
  end
end
