class KcNoiseC < Formula
  desc "Noise-C, a plain C implementation of the Noise protocol"
  homepage "https://github.com/rweather/noise-c/"
  head "https://github.com/rweather/noise-c.git"
  
  depends_on "automake" => :build
  depends_on "autoconf" => :build
  depends_on "openssl" => :build
  depends_on "libsodium" => :build

  def install
    system "autoreconf -i"
    system "./configure", "--prefix=#{prefix}", "--with-libsodium", "--with-openssl"
    system "make"
    ohai "Running self tests; this may take some time..."
    system "make check"
    system "make install"
  end
  
  test do
    assert system("stat /usr/local/lib/libnoisekeys.a") != true
    assert system("stat /usr/local/lib/libnoiseprotobufs.a") != true
    assert system("stat /usr/local/lib/libnoiseprotocol.a") != true
  end
end
