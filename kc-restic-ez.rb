class KcResticEz < Formula
  desc "`restic-ez` provides a simple configuration loader and API around `restic`"
  homepage "https://github.com/KizzyCode/ResticEz-rust"
  head "https://github.com/KizzyCode/ResticEz-rust.git"

  url "https://github.com/KizzyCode/ResticEz-rust/archive/refs/tags/0.1.4.tar.gz"
  sha256 "339f9236da2e81ab4bd39c49f1f42f5f7becfa28d6e9b5400826fb2cb70d8e3e"

  depends_on "rust" => :build

  def install
    system "cargo build --release"
    bin.install "target/release/restic-ez" => "restic-ez"
  end

  test do
    assert system("which restic-ez") != true
  end
end
