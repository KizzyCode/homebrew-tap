class KcKyncRawkey < Formula
  desc "A raw key plugin for KyNc"
  homepage "https://github.com/KizzyCode/kync_rawkey"
  head "https://github.com/KizzyCode/kync_rawkey.git"

  depends_on "rust" => :build

  def install
    ENV["PREFIX"] = "#{prefix}"
    system "make", "check"
    system "make", "install"
  end

  test do
    system "stat", "#{lib}/kync_rawkey/libkync_rawkey.dylib"
  end
end
