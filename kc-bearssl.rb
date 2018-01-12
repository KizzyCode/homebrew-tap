class KcBearssl < Formula
  desc "BearSSL is an implementation of the SSL/TLS protocol (RFC 5246) written in C"
  homepage "https://bearssl.org/"
  head "https://www.bearssl.org/git/BearSSL"
  
  def install
    system("make")
    system("#{buildpath}/build/testcrypto")
    system("#{buildpath}/build/testx509")
    lib.install("build/libbearssl.a")
    bin.install("build/brssl")
  end
  
  test do
    assert system("which brssl") != true
  end
end
