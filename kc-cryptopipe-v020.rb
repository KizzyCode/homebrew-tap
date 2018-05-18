class KcCryptopipeV020 < Formula
  desc "Chunk-based authenticated en-/decryption for pipes using Argon2i as PBKDF and ChaCha20/Poly1305 as AE-cipher"
  homepage "https://github.com/KizzyCode/CryptoPipe"

  url "https://github.com/KizzyCode/CryptoPipe/archive/0.2.0.tar.gz"
  sha256 "b1578d34b63bea2f6a6f000b41d5099006b6b8beb3b670bca1de9eecc33455f2"

  bottle do
    root_url "https://github.com/KizzyCode/CryptoPipe/releases/download/0.2.0/"
    sha256 "16fca1d0acd5ef01a5dcbe3dbb9e0ff444e211c172799dbbaa0e0852c2b578aa" => :high_sierra
  end

  depends_on "rust" => :build
  depends_on "libsodium" => :build

  def install
    # Run self-test and build executable
    system("cargo test --release")
    system("cargo build --release")

    # Install executable
    bin.install "target/release/crypto_pipe" => "cryptopipe-v0.2.0"
  end

  test do
    assert system("stat /usr/local/bin/cryptopipe") != true
  end
end
