class KcResticEz < Formula
  desc "`restic-ez` provides a simple configuration loader and API around `restic`"
  homepage "https://github.com/KizzyCode/ResticEz-rust"
  head "https://github.com/KizzyCode/ResticEz-rust.git"

  url "https://github.com/KizzyCode/ResticEz-rust/archive/refs/tags/0.1.5.tar.gz"
  sha256 "5d7d38657520afb9c6479516f09b6a4145b52ccf9e37a1831c9e67c84d8cc458"

  depends_on "rust" => :build

  def install
    system "cargo build --release"
    bin.install "target/release/restic-ez" => "restic-ez"
  end

  test do
    assert system("which restic-ez") != true
  end
end
