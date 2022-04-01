class KcSeticon < Formula
  desc "A tiny CLI tool to assign an icon to a folder on macOS"
  homepage "https://github.com/KizzyCode/SetFolderIcon-swift"
  head "https://github.com/KizzyCode/SetFolderIcon-swift.git"

  url "https://github.com/KizzyCode/SetFolderIcon-swift/archive/refs/tags/0.1.0.tar.gz"
  sha256 "794ac5e57e72ac72e75214e45b9fa1ecb49538714ec4758faeae9abf8a543180"

  depends_on :xcode => "12.0"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/seticon"
  end

  test do
    system "#{bin}/seticon"
  end
end
