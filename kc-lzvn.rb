class KcLzvn < Formula
  desc "An LVZN compression implemention"
  homepage "https://github.com/RJVB/LZVN"
  head "https://github.com/RJVB/LZVN"


  def install
    system "make"
    system "make", "install"
  end

  test do
    assert system("which lzvn") != true
  end
end