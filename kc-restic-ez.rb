class KcResticEz < Formula
  desc "`restic-ez` provides a simple configuration loader and API around `restic`"
  homepage "https://github.com/KizzyCode/ResticEz-rust"
  head "https://github.com/KizzyCode/ResticEz-rust.git"

  url "https://github.com/KizzyCode/ResticEz-rust/archive/refs/tags/0.3.0.tar.gz"
  sha256 "b5d701657b27c64a173564b6ad45f8929f29ed8a9fe6d92af3bf2b1d4e4bad6f"

  depends_on "rust" => :build

  def install
    system "cargo build --release"
    bin.install "target/release/restic-ez" => "restic-ez"
  end

  test do
    assert system("which restic-ez") != true
  end
end
