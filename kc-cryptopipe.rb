class KcCryptopipe < Formula
  desc "This application allows you to mount a HTTP-resource like a file"
  homepage "https://github.com/KizzyCode/CryptoPipe"

  url "https://github.com/KizzyCode/CryptoPipe/archive/0.1.0.tar.gz"
  sha256 "7f03235691846e87e001019aaf5dd718320390110b40bdf0ef26b42abbf2585f"

  head "https://github.com/KizzyCode/CryptoPipe.git"

  bottle do
    root_url "https://github.com/KizzyCode/CryptoPipe/releases/download/0.1.0/"
    sha256 "f6b245ab1d7ac4e57dc6f92541e85d7003e454c5cdc28d241e110388569e546f" => :high_sierra
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
