class KcPbzx < Formula
  desc "A PBZX stream parser"
  homepage "https://github.com/KizzyCode/Pbzx"
  url "https://github.com/KizzyCode/Pbzx/archive/v1.0.2.tar.gz"
  sha256 "31904657c3d0c3c6ed89f918309ffeb8a6c87ad1fae68affc3e5e9abf8997b99"
  head "https://github.com/KizzyCode/Pbzx.git"

  depends_on "xz" => :build

  def install
    system "#{ENV.cc}", "-llzma", "-lxar", "-I/usr/local/include", "-O3", "-o", "pbzx", "pbzx.c"
    bin.install "pbzx"
  end

  test do
    assert system("stat #{bin}/pbzx") != true
  end
end
