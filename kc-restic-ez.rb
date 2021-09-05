class KcResticEz < Formula
  desc "`restic-ez` provides a simple configuration loader and API around `restic`"
  homepage "https://github.com/KizzyCode/ResticEz-rust"
  head "https://github.com/KizzyCode/ResticEz-rust.git"

  url "https://github.com/KizzyCode/ResticEz-rust/archive/refs/tags/0.1.1.tar.gz"
  sha256 "c6ff726654706f6fdf70bda96b7c63c4efe836bde44c5a5dc2b687997b803d9b"

  depends_on "rust" => :build

  def install
    system "cargo build --release"
    bin.install "target/release/restic-ez" => "restic-ez"
  end

  test do
    assert system("which restic-ez") != true
  end
end
