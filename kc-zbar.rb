class KcZbar < Formula
  desc "Suite of barcodes-reading tools (Fedora's more modern fork)"
  homepage "https://zbar.sourceforge.io"
  
  url "https://github.com/KizzyCode/homebrew-source-zbar/archive/0.20.1.tar.gz"
  sha256 "6db85ae844b797d318a7f877366d6259d039691dc9f756331cd6c2a8cea511c0"
  revision 1

  head "https://github.com/KizzyCode/homebrew-source-zbar.git"

  bottle do
    root_url "https://github.com/KizzyCode/homebrew-source-zbar/releases/download/0.20.1/"
    sha256 "84b0862f09f9829c0d70ebe0e68e0cc88971ef6eecccb84939bca2e5f34872b3" => :mojave
  end

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
