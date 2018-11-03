class KcComputeBitrate < Formula
  desc "Compute the recommended bitrate if transcoding x264 → x265"
  homepage "https://github.com/KizzyCode/compute_bitrate"
  head "https://github.com/KizzyCode/compute_bitrate.git"

  def install
    bin.install "compute_bitrate.sh" => "compute_bitrate"
  end

  test do
    assert system("which compute_bitrate") != true
  end
end
