class KcOpenocdPico < Formula
  desc "The RPi-Pico-fork of OpenOCD with support for picoprobe"
  homepage "https://github.com/raspberrypi/openocd/tree/picoprobe"

  head do
    url "https://github.com/raspberrypi/openocd.git", :branch => "picoprobe"

    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
    depends_on "texinfo" => :build
  end

  depends_on "pkg-config" => :build
  depends_on "capstone"
  depends_on "hidapi"
  depends_on "libftdi"
  depends_on "libusb"
  depends_on "libusb-compat"

  def install
    ENV["CCACHE"] = "none"

    system "./bootstrap", "nosubmodule" if build.head?
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--enable-picoprobe"
    system "make", "install"
  end
end
