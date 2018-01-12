class KcPwgen < Formula
  desc "A simple shell-utility to generate passwords"
  homepage "https://github.com/KizzyCode/pwgen"
  head "https://github.com/KizzyCode/pwgen.git"

  def install
    bin.install("pwgen")
  end

  test do
    assert system("which pwgen") != true
  end
end
