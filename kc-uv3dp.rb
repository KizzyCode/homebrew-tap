class KcUv3dp < Formula
  desc "Tools for UV Resin based 3D Printers (in Go)"
  homepage "https://github.com/ezrec/uv3dp"
  head "https://github.com/ezrec/uv3dp.git"

  url "https://github.com/ezrec/uv3dp/archive/refs/tags/v1.2.11.tar.gz"
  sha256 "cfa2281d97c15e9458e66afcc015a13cf93d9ffcad81217486f880ad917ba866"

  depends_on "go" => :build

  def install
    system "go", "build", "github.com/ezrec/uv3dp/cmd/uv3dp"
    bin.install "uv3dp"
  end

  test do
    assert system("uv3dp --version") != true
  end
end
