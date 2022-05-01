class KcCcidDriver < Formula
    desc "This package provides the source code for a generic USB CCID driver and ICCD"
    homepage "https://ccid.apdu.fr"
    url "https://ccid.apdu.fr/files/ccid-1.5.0.tar.bz2"
    sha256 "81549b3422469d503996d03a3aed2ef1375b359167f10d66be9e3844e729322e"
    
    depends_on "libusb"
    depends_on "kc-pcsc-lite"
    depends_on "pkgconfig" => :build
  
    def install
      ENV.prepend_path "PKG_CONFIG_PATH", "#{Formula["kc-pcsc-lite"].opt_lib}/pkgconfig"
    
      system "./configure", "--prefix=#{prefix}", "--enable-static", "--enable-usbdropdir=#{buildpath}"
      system "make", "install"
      (lib/"pcsc-drivers").install "ifd-ccid.bundle"
    end
  end
  