class KcBotan < Formula
  desc "Cryptographic algorithms and formats library in C++"
  homepage "https://botan.randombit.net/"
  url "https://botan.randombit.net/releases/Botan-2.9.0.tgz"
  sha256 "305564352334dd63ae63db039077d96ae52dfa57a3248871081719b6a9f2d119"
  head "https://github.com/randombit/botan.git"

  conflicts_with "botan", :because => "botan is the same library"

  def install
    ENV.cxx11

    args = %W[
      --prefix=#{prefix}
      --docdir=share/doc
      --cpu=#{MacOS.preferred_arch}
      --cc=#{ENV.compiler}
      --os=darwin
    ]

    system "./configure.py", *args

    # A hack to force them use our CFLAGS. MACH_OPT is empty in the Makefile but used for each call to cc/ld.
    system "make"

    # Run self tests
    ohai "Running self tests (this may take a while)..."
    system "./botan-test"

    # Install formula
    system "make", "install"
  end

  test do
    assert_equal "4F4DF6B8239B38056DACA0C7CDA2B2AA -", shell_output("echo Testolope | botan hash --algo=MD5")
  end
end
