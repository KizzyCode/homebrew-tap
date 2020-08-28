class KcDiceware < Formula
  desc "An implementation of the popular diceware method to generate passwords"
  homepage "https://github.com/KizzyCode/diceware-swift"
  head "https://github.com/KizzyCode/diceware-swift.git"
  
  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/diceware"
  end

  test do
    system "#{bin}/diceware"
  end
end