class KcTimestamp < Formula
  desc "Simple timestamp-script based on \"date\""
  homepage "https://github.com/KizzyCode/timestamp"
  head "https://github.com/KizzyCode/timestamp.git"

  def install
    bin.install("timestamp")
  end

  test do
    assert system("which timestamp") != true
  end
end
