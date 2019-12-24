class KcIasl < Formula
  desc "Fork of Intel's iasl for use in macOS"
  homepage "https://github.com/RehabMan/Intel-iasl"
  head "https://github.com/RehabMan/Intel-iasl.git"

  def install
    system "make"
    bin.install "./generate/unix/bin/iasl"
  end

  test do
    system "#{bin}/iasl", "-v"
  end
end
