class KcDiceware < Formula
  desc "An implementation of the popular diceware method to generate passwords"
  homepage "https://github.com/KizzyCode/diceware-swift"
  head "https://github.com/KizzyCode/diceware-swift.git"

  url "https://github.com/KizzyCode/diceware-swift/archive/1.0.1.tar.gz"
  sha256 "5acce2152220e6423fd254023905d3bfaf6bd539e22fe4feee1fc8db91dc6b57"

  depends_on :xcode => "11.0"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/diceware"
  end

  test do
    system "#{bin}/diceware"
  end
end