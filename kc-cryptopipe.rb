class KcCryptopipe < Formula
  desc "Chunk-based authenticated en-/decryption for pipes using Argon2i as PBKDF and ChaCha20+Poly1305 as AE-cipher"
  homepage "https://github.com/KizzyCode/CryptoPipe"

  url "https://github.com/KizzyCode/CryptoPipe/archive/0.3.1.tar.gz"
  sha256 "c769b40ca4a445c5fe700e084d0acb754584eab998d0f8fbaf28132028f57868"

  head "https://github.com/KizzyCode/CryptoPipe.git"

  bottle do
    root_url "https://github.com/KizzyCode/CryptoPipe/releases/download/0.3.1/"
    sha256 "441f06d5788d139add180239b5aeeb2c7039e55085346609f9a751d1047ce0e1" => :high_sierra
  end

  depends_on "rust" => :build
  depends_on "libsodium" => :build

  def install
    # Run self-test and build executable
    system "cargo test --release"
    system "cargo build --release"

    # Install executable
    bin.install "target/release/crypto_pipe" => "cryptopipe"
  end

  test do
    assert system("stat /usr/local/bin/cryptopipe") != true
  end
end
