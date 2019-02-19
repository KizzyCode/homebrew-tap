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
    assert_equal "854E3A2D0F90523515E7FA419B1652289E8A07FFC3DCBE51F29998C0D2CED781",
      shell_output("printf Testolope | botan hash --algo=SHA-256 | dd bs=1 count=64")
  end
end
