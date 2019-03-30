class KcRemotepid < Formula
  desc "Library to get the PID of the remote TCP-endpoint on localhost"
  homepage "https://github.com/KizzyCode/remote_pid"
  head "https://github.com/KizzyCode/remote_pid.git"

  depends_on "rust" => :build

  def install
    system "make install", "-C", "c_api/"
  end

  test do
    system "stat", "#{lib}/libremote_pid.a"
    system "stat", "#{lib}/libremote_pid.dylib"
    system "stat", "#{include}/libremote_pid.h"
  end
end
