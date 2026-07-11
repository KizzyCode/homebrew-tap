class KcAgent < Formula
  desc "A tiny script to start ghcr.io/kizzycode/devcontainer:minimal as agent container"
  homepage "https://github.com/KizzyCode/Devcontainer-docker"
  head "https://github.com/KizzyCode/Devcontainer-docker.git"

  url "https://github.com/KizzyCode/Devcontainer-docker/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "bd59c3a8e8ff50dbbd6f7b9950c27bf4861172d3118baeb6538f38809635d199"

  depends_on "ca-certificates"
  depends_on "container"

  def install
    bin.install "minimal/macos-example.sh" => "agent"
  end

  test do
    system "#{bin}/agent"
  end
end
