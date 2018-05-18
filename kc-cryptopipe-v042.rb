class KcCryptopipeV042 < Formula
  desc "Chunk-based authenticated en-/decryption for pipes using Argon2i as PBKDF and ChaCha20+Poly1305 as AE-cipher"
  homepage "https://github.com/KizzyCode/CryptoPipe"

  url "https://github.com/KizzyCode/CryptoPipe/archive/0.4.2.tar.gz"
  sha256 "d60387f51c80169eaf812191edda013a6215781a3e9718d5b5922f980aa9c044"

  bottle do
    root_url "https://github.com/KizzyCode/CryptoPipe/releases/download/0.4.2/"
    sha256 "7a2dd2e537507f077d7749da5e9fd001c9a10f40053ced1a2a767b5443145929" => :high_sierra
  end

  depends_on "rust" => :build
  depends_on "libsodium" => :build

  def install
    # Run self-test and build executable
    ohai "Running self tests; this may take some time..."
    system "cargo test --release"
    system "cargo build --release"

    # Install executable
    bin.install "target/release/crypto_pipe" => "cryptopipe-v0.4.2"
  end

  test do
    assert system("stat /usr/local/bin/cryptopipe") != true
  end
end
