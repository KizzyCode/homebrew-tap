cask "kc-reinersct-cyberjack-rfid-standard-driver" do
  version "3.99.5"
  name "REINER SCT CyberJack RFID Standard Driver"
  homepage "https://www.reiner-sct.com/support/support-anfrage/?productGroup=77304735&product=77304820&q=driver&os=macOS#choice5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://support.reiner-sct.de/downloads/MAC/pcsc-cyberjack_3.99.5final.SP15-x86_64-signed.pkg"
    sha256 "721c0cf3f82d863acd5c070b58961dcd890a035dd339563a5959b5f124d75820"
    pkg "pcsc-cyberjack_3.99.5final.SP15-x86_64-signed.pkg"
    depends_on macos: ">= :high_sierra"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://support.reiner-sct.de/downloads/MAC/pcsc-cyberjack_3.99.5final.SP15-arm64-signed.pkg"
    sha256 "bea7c3ae2e146b9216b805e611507bfa614c0c768c1206a53c07b6e7c33c7836"
    pkg "pcsc-cyberjack_3.99.5final.SP15-arm64-signed.pkg"
    depends_on macos: ">= :big_sur"
  end

  uninstall pkgutil: [
    "com.reiner-sct.mac.cyberjack"
  ]
  
  caveats do
    reboot
  end
end
