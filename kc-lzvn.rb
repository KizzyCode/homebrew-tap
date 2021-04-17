class KcLzvn < Formula
  desc "An LVZN compression implemention"
  homepage "https://github.com/RJVB/LZVN"
  head "https://github.com/RJVB/LZVN.git", :branch => "RJVB"

  depends_on "cmake" => :build

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "."
    system "make"
    system "make", "install"
  end

  test do
    assert system("which lzvn") != true
  end
end