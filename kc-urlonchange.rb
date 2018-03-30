class KcUrlonchange < Formula
  desc "A simple script that downloads a URL periodically an bells when the content has changed"
  homepage "https://github.com/KizzyCode/url_on_change"
  head "https://github.com/KizzyCode/url_on_change.git"

  def install
    bin.install("url_on_change")
  end

  test do
    assert system("which url_on_change") != true
  end
end
