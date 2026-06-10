cask "kc-reinersct-cyberjack-rfid-standard-driver" do
  version "3.99.5-SP16"
  name "REINER SCT CyberJack RFID Standard Driver"
  homepage "https://help.reiner-sct.com/de/support/solutions/articles/101000480002"

  if OS.mac? && Hardware::CPU.intel?
    url "https://support.reiner-sct.de/downloads/MAC/pcsc-cyberjack_3.99.5final.SP16-arm64-signed.pkg"
    sha256 "ce347734f78bbcc66fa8da24828a191f5f585adceb14cf5423aac7e12d9638fb"
    pkg "pcsc-cyberjack_3.99.5final.SP16-arm64-signed.pkg"
    depends_on macos: :ventura
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://support.reiner-sct.de/downloads/MAC/pcsc-cyberjack_3.99.5final.SP16-x86_64-signed.pkg"
    sha256 "2aa15c5e647fa8841ffd9c7fff950dc642ce23656a498a2e83412cd9c1551a0a"
    pkg "pcsc-cyberjack_3.99.5final.SP16-x86_64-signed.pkg"
    depends_on macos: :ventura
  end

  uninstall pkgutil: [
    "com.reiner-sct.mac.cyberjack"
  ]
  
  caveats do
    reboot
  end
end
