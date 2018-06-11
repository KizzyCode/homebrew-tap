class KcThttpd < Formula
  desc "thttpd - tiny/turbo/throttling HTTP server"
  homepage "http://www.acme.com/software/thttpd/"
  url "http://www.acme.com/software/thttpd/thttpd-2.29.tar.gz"
  sha256 "99c09f47da326b1e7b5295c45549d2b65534dce27c44812cf7eef1441681a397"

  def install
    system "./configure", "--host=i686-apple-bsd", "--prefix=#{prefix}"
    system "make install"
  end
end
