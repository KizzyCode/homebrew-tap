class KcAgent < Formula
  desc "A tiny script to start the ghcr.io/kizzycode/devcontainer containers as agent container"
  homepage "https://github.com/KizzyCode/Devcontainer-docker"
  head "https://github.com/KizzyCode/Devcontainer-docker.git"

  url "https://github.com/KizzyCode/Devcontainer-docker/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "26abe92c9e2d4532acddd8ec7c5b8064b6841ee2c944ed13ba48f1b7e7047fe8"

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
