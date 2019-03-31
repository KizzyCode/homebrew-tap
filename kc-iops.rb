class KcIops < Formula
  desc "`iops` is an IO benchmark tool that performs random reads on block devices"
  homepage "https://github.com/cxcv/iops"
  head "https://github.com/cxcv/iops.git"

  def install
    bin.install("iops")
  end

  test do
    assert system("which iops") != true
  end
end
