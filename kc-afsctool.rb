class KcAfsctool < Formula
  desc "Utility for manipulating HFS+/APFS compressed files"
  homepage "https://github.com/RJVB/afsctool"
  url "https://github.com/RJVB/afsctool/archive/1.7.0.tar.gz"
  sha256 "4ae643ae43aca22e96cd6a2a471f5d975a3d08eafa937c1fc8e562691bcbfb1a"
  
  conflicts_with "afsctool", :because => "kc-afsctool also ships an afsctool binary"

  depends_on "google-sparsehash" => :build
  depends_on "zlib" => :build
  depends_on "cmake" => :build
  depends_on "pkgconfig" => :build

  def install
    system "cmake", "."
    system "make"
    bin.install "afsctool"
  end

  test do
    path = testpath/"foo"
    path.write "some text here."
    system "#{bin}/afsctool", "-c", path
    system "#{bin}/afsctool", "-v", path
  end
end