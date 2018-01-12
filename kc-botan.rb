class KcBotan < Formula
  desc "Cryptographic algorithms and formats library in C++"
  homepage "https://botan.randombit.net/"
  url "https://botan.randombit.net/releases/Botan-2.1.0.tgz"
  sha256 "460f2d7205aed113f898df4947b1f66ccf8d080eec7dac229ef0b754c9ad6294"
  head "https://github.com/randombit/botan.git"

  needs :cxx11

  def install
    ENV.cxx11

    args = %W[
      --prefix=#{prefix}
      --docdir=share/doc
      --cpu=#{MacOS.preferred_arch}
      --cc=#{ENV.compiler}
      --os=darwin
      --disable-modules=darwin_secrandom
    ]

    system "./configure.py", *args
    # A hack to force them use our CFLAGS. MACH_OPT is empty in the Makefile but used for each call to cc/ld.
    system "make", "install", "MACH_OPT=#{ENV.cflags}"
  end

  test do
    assert system("#{buildpath}/botan-test") != true
  end
end
