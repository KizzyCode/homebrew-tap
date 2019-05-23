cask "kc-reinersct-cyberjack-rfid-standard" do
  version "3.99.5"
  sha256 "25bcd5d5ff197163bba94e72cddb4b74ad8a04df8e88df01404378f80c46f9b4"
  
  url "https://support.reiner-sct.de/downloads/MAC/pcsc-cyberjack_3.99.5final.SP13-x86_64-signed.pkg"
  name "REINER SCT CyberJack RFID Standard Driver"
  homepage "https://www.reiner-sct.com/support/support-anfrage/?os=MacOS&productGroup=77304735&product=77304820&q=driver#choice5"

  depends_on macos: '>= :high_sierra'

  pkg "pcsc-cyberjack_3.99.5final.SP13-x86_64-signed.pkg"

  uninstall pkgutil: [
    "com.reiner-sct.mac.cyberjack"
  ]

  caveats do
    reboot
  end
end
