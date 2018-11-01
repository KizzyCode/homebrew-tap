class KcZbar < Formula
  desc "Suite of barcodes-reading tools (Fedora's more modern fork)"
  homepage "https://zbar.sourceforge.io"
  head "https://github.com/KizzyCode/homebrew-source-zbar.git"
  
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "docbook" => :build
  depends_on "gettext" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "xmlto" => :build
  
  depends_on "freetype"
  depends_on "imagemagick"
  depends_on "jpeg"
  depends_on "libtool"
  depends_on "ufraw"
  depends_on "xz"
  
  def install
    gettext = Formula["gettext"]
    system "autoreconf", "-fvi", "-I", "#{gettext.opt_share}/aclocal"

    args = %W[
      --prefix=#{prefix}
      --disable-video
      --without-x
      --without-python2
      --without-qt
      --without-qt5
      --without-gtk
    ]

    # Configure and build
    system "./configure", *args
    system "make"

    # Install
    system "make", "install"
  end

  test do
    system bin/"zbarimg", "-h"
  end
end
