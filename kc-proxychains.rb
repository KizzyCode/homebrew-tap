class KcProxychains < Formula
  head "https://github.com/rofl0r/proxychains-ng.git"
  homepage "https://github.com/rofl0r/proxychains-ng"
  
  def install
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end