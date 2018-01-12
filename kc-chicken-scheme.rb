class KcChickenScheme < Formula
  desc "Chicken Scheme Core - a practical and portable scheme system"
  homepage "https://code.call-cc.org"
  url "https://code.call-cc.org/releases/4.12.0/chicken-4.12.0.tar.gz"
  sha256 "605ace459bc66e8c5f82abb03d9b1c9ca36f1c2295931d244d03629a947a6989"
  head "https://code.call-cc.org/git/chicken-core.git"
  
  resource "tarball" do
    url "https://code.call-cc.org/releases/4.12.0/chicken-4.12.0.tar.gz"
    sha256 "605ace459bc66e8c5f82abb03d9b1c9ca36f1c2295931d244d03629a947a6989"
  end

  def install
    ENV.deparallelize
    
    args = %W[
      PLATFORM=macosx
      ARCH=x86-64
      PREFIX=#{prefix}
    ]
    system "make", *args
    system "make", "install", *args
  end

  test do
    assert_equal "Testolope: 8\n", shell_output("csi -eval '(print \"Testolope: \" (+ 1 7))'")
    
    ENV.deparallelize
    testpath.install resource("tarball")
    system "make", "check", "PLATFORM=macosx", "ARCH=x86-64", "PREFIX=#{prefix}"
  end
end
