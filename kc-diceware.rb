class KcDiceware < Formula
  desc "An implementation of the popular diceware method to generate passwords"
  homepage "https://github.com/KizzyCode/diceware-swift"
  head "https://github.com/KizzyCode/diceware-swift.git"

  url "https://github.com/KizzyCode/diceware-swift/archive/1.0.0.tar.gz"
  sha256 "ca4e7de25535c7d3b736d214a92d5c02ceb0de67259c8f4c8f4a4cd63a2cd2c8"

  depends_on :xcode => "11.0"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/diceware"
  end

  test do
    system "#{bin}/diceware"
  end
end