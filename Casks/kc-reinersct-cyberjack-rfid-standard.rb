cask 'kc-reinersct-cyberjack-rfid-standard' do
  version '3.99.5'
  sha256 '18fb1eab5003cf51ec6a4d8612a6a3d0e7e02f8165d06eb88cd637be527e5a16'
  
  url "https://support.reiner-sct.de/downloads/MAC/pcsc-cyberjack_3.99.5final.SP13-x86_64-signed.pkg"
  name "REINER SCT CyberJack RFID Standard Driver"
  homepage "https://www.reiner-sct.com/support/support-anfrage/?os=MacOS&productGroup=77304735&product=77304820&q=driver#choice5"

  depends_on macos: '>= :high_sierra'

  pkg "pcsc-cyberjack_3.99.5final.SP13-x86_64-signed.pkg"

  uninstall pkgutil: [
    "com.reiner-sct.mac.cyberjack"
  ]
end
