class KcCryptopipeV041 < Formula
  desc "Chunk-based authenticated en-/decryption for pipes using Argon2i as PBKDF and ChaCha20+Poly1305 as AE-cipher"
  homepage "https://github.com/KizzyCode/CryptoPipe"

  url "https://github.com/KizzyCode/CryptoPipe/archive/0.4.1.tar.gz"
  sha256 "11f6220e4638044f8cb2cf519c59def4c893ecf6e7ce8ecef41947564445e569"

  head "https://github.com/KizzyCode/CryptoPipe.git"

  bottle do
    root_url "https://github.com/KizzyCode/CryptoPipe/releases/download/0.4.1/"
    sha256 "16344d6bf4cb318b088aec9018631be31ea14e9a227e7d963cd15549640ca4a6" => :high_sierra
  end

  depends_on "rust" => :build
  depends_on "libsodium" => :build

  def install
    # Run self-test and build executable
    ohai "Running self tests; this may take some time..."
    system "cargo test --release"
    system "cargo build --release"

    # Install executable
    bin.install "target/release/crypto_pipe" => "cryptopipe-v0.4.1"
  end

  test do
    assert system("stat /usr/local/bin/cryptopipe") != true
  end
end
