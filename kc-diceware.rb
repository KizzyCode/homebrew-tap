class KcDiceware < Formula
  desc "An implementation of the popular diceware method to generate passwords"
  homepage "https://github.com/KizzyCode/diceware-swift"
  head "https://github.com/KizzyCode/diceware-swift.git"

  url "https://github.com/KizzyCode/diceware-swift/archive/1.1.1.tar.gz"
  sha256 "f6fc57cc6f0cf33822ac02f8b5a983848553a45bd22b2df1c86a58383f097f50"

  depends_on :xcode => "14.3"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/diceware"
  end

  test do
    system "#{bin}/diceware"
  end
end
