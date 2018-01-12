class KcHttpfs < Formula
  desc "This application allows you to mount a HTTP-resource like a file"
  homepage "https://github.com/KizzyCode/HTTPMount"
  head "https://github.com/KizzyCode/HTTPMount.git"

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
