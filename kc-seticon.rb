class KcSeticon < Formula
  desc "Tool to set custom icons for files and folders"
  homepage "https://github.com/KizzyCode/SetFinderIcon"
  head "https://github.com/KizzyCode/SetFinderIcon.git"

  def install
    bin.install "seticon.py" => "seticon" 
  end

  test do
    assert system("which seticon") != true
  end
end
