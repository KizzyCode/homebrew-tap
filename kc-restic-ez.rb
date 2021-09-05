class KcResticEz < Formula
  desc "`restic-ez` provides a simple configuration loader and API around `restic`"
  homepage "https://github.com/KizzyCode/ResticEz-rust"
  head "https://github.com/KizzyCode/ResticEz-rust.git"

  url "https://github.com/KizzyCode/ResticEz-rust/archive/refs/tags/0.1.0.tar.gz"
  sha256 "e0a0ba18223f6608cb93d985cf89384e22c0e2b0c3f01747a8f5c7cea1020db7"

  depends_on "rust" => :build

  def install
    system "cargo build --release"
    bin.install "target/release/restic-ez" => "restic-ez"
  end

  test do
    assert system("which restic-ez") != true
  end
end
