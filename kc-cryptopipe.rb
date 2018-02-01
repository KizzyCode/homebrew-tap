class KcCryptopipe < Formula
  desc "Chunk-based authenticated en-/decryption for pipes using Argon2i as PBKDF and ChaCha20/Poly1305 as AE-cipher"
  homepage "https://github.com/KizzyCode/CryptoPipe"

  url "https://github.com/KizzyCode/CryptoPipe/archive/0.2.0.tar.gz"
  sha256 "b1578d34b63bea2f6a6f000b41d5099006b6b8beb3b670bca1de9eecc33455f2"

  head "https://github.com/KizzyCode/CryptoPipe.git"

  bottle do
    root_url "https://github.com/KizzyCode/CryptoPipe/releases/download/0.2.0/"
    sha256 "58a39a6f7089028e719179a975af60679bdd895a8f29718f08a85a9ce8138a33" => :high_sierra
  end

  depends_on "rust" => :build
  depends_on "libsodium" => :build

  def install
    # Run self-test and build executable
    system("cargo test --release")
    system("cargo build --release")

    # Rename and install executable
    cp("target/release/crypto_pipe", "target/release/cryptopipe")
    bin.install("target/release/cryptopipe")
  end

  test do
    assert system("stat /usr/local/bin/cryptopipe") != true
  end
end
