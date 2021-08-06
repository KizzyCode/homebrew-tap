class KcResticEz < Formula
  desc "A simple restic wrapper with easy repository configuration"
  homepage "https://github.com/KizzyCode/ResticEz-python"
  head "https://github.com/KizzyCode/ResticEz-python"

  def install
    bin.install "restic-ez.py" => "restic-ez"
  end

  test do
    assert system("which restic-ez") != true
  end
end
