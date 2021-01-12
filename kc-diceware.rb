class KcDiceware < Formula
  desc "An implementation of the popular diceware method to generate passwords"
  homepage "https://github.com/KizzyCode/diceware-swift"
  head "https://github.com/KizzyCode/diceware-swift.git"

  url "https://github.com/KizzyCode/diceware-swift/archive/1.1.0.tar.gz"
  sha256 "9e250b3461ae910d0069da968c46e5a9374b61409e8300f4fdf1001e2f63031b"

  depends_on :xcode => "12.0"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/diceware"
  end

  test do
    system "#{bin}/diceware"
  end
end