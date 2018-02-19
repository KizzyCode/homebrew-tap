class KcCryptopipe < Formula
  desc "Chunk-based authenticated en-/decryption for pipes using Argon2i as PBKDF and ChaCha20+Poly1305 as AE-cipher"
  homepage "https://github.com/KizzyCode/CryptoPipe"

  url "https://github.com/KizzyCode/CryptoPipe/archive/0.3.0.tar.gz"
  sha256 "80aa5dfa2d09b19ba78198d1bc4af595bd0992d9e4084ba1cdfa8f77c14bd0be"

  head "https://github.com/KizzyCode/CryptoPipe.git"

  bottle do
    root_url "https://github.com/KizzyCode/CryptoPipe/releases/download/0.3.0/"
    sha256 "8d2393429f3c8f25104dc6e068e7930cd294ce3eb0a287ca8a3bfcecebaeba6c" => :high_sierra
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
