class KcHttpfs < Formula
  desc "This application allows you to mount a HTTP-resource like a file"
  homepage "https://github.com/KizzyCode/HTTPMount"

  url "https://github.com/KizzyCode/HTTPMount/archive/0.2.0.tar.gz"
  sha256 "3bb2397fe7088124a0a1dc791603a5bc9d0503669dbf2f9c99a876da67136ed1"

  head "https://github.com/KizzyCode/HTTPMount.git"

  bottle do
    root_url "https://github.com/KizzyCode/HTTPMount/releases/download/0.2.0/"
    sha256 "ba2765db3ba4e212efaa32d8fe37da2cb120014c32f4fbf6a21dfa11733a8cd2" => :high_sierra
  end

  depends_on "rust" => :build
  depends_on "kc-libselect" => :build
  depends_on "pkg-config" => :build

  def install
    ENV["PKG_CONFIG_PATH"] = "/usr/local/lib/pkgconfig"
    
    system("cargo build --release")
    cp("target/release/http_mount", "target/release/httpfs")
    bin.install("target/release/httpfs")
  end

  test do
    assert system("stat /usr/local/bin/httpfs") != true
  end
end
