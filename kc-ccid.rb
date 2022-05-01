class KcCcid < Formula
    desc "This package provides the source code for a generic USB CCID driver and ICCD"
    homepage "https://ccid.apdu.fr"
    url "https://ccid.apdu.fr/files/ccid-1.5.0.tar.bz2"
    sha256 "81549b3422469d503996d03a3aed2ef1375b359167f10d66be9e3844e729322e"
    
    depends_on "libusb"
    depends_on "kc-pcsc-lite"
    depends_on "pkgconfig" => :build
  
    def install
      system "./configure", "--prefix=#{prefix}", "--enable-static", 
        "PCSC_CFLAGS=-I/opt/homebrew/include -I/opt/homebrew/include/PCSC -L/opt/homebrew/lib"
      system "make", "install"
    end
  end
  