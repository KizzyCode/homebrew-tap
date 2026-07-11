class KcAgent < Formula
  desc "A tiny script to start ghcr.io/kizzycode/devcontainer:minimal as agent container"
  homepage "https://github.com/KizzyCode/Devcontainer-docker"
  head "https://github.com/KizzyCode/Devcontainer-docker.git"

  url "https://github.com/KizzyCode/Devcontainer-docker/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "d41fd7c1d4d20caf60209d416528e776838396f3507b1e0483d999e57c3e5c68"

  depends_on "ca-certificates"
  depends_on "container"

  def install
    bin.install "minimal/macos-example.sh" => "agent"
    bin.install "python/macos-example.sh" => "agent-python"
    bin.install "rust/macos-example.sh" => "agent-rust"
  end

  test do
    system "#{bin}/agent"
  end
end
