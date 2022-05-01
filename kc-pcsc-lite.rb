class KcPcscLite < Formula
  desc "Middleware to access a smart card using SCard API (PC/SC)"
  homepage "https://pcsclite.apdu.fr/"
  url "https://pcsclite.apdu.fr/files/pcsc-lite-1.9.5.tar.bz2"
  sha256 "9ee3f9b333537562177893559ad4f7b8d5c23ebe828eef53056c02db14049d08"

  depends_on "libusb"

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-libsystemd", "--enable-static", 
      "--enable-ipcdir=#{var}/run/pcsc-ipc", "--enable-usbdropdir=#{lib}/pcsc-drivers"
    system "make", "install"
  end

  def caveats
    <<~EOS
      To automatically launch kc-pcsc-lite at login:
        brew services start kc-pcsc-lite
    EOS
  end

  service do
    run [opt_sbin/"pcscd", "--foreground"]
    keep_alive true
  end
end
