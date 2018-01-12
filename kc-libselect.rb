class KcLibselect < Formula
  desc "This library wraps the macro-heavy select-API into a FFI-compatible C-interface to provide blocking-IO with timeouts"
  homepage "https://github.com/KizzyCode/libselect"
  head "https://github.com/KizzyCode/libselect.git"

  depends_on "scons" => :build

  def install
    system("scons")
    lib.install("out/libselect.a")
  end

  test do
    assert system("stat /usr/local/lib/libselect.a") != true
  end
end
