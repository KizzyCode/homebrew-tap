class KcSl1ToCtb < Formula
    desc "Convert prusaslicer's sl1 files to chitubox' ctb v4 ones"
    homepage "https://github.com/KizzyCode/SL1toCTB-c"
    head "https://github.com/KizzyCode/SL1toCTB-c.git"
  
    url "https://github.com/KizzyCode/SL1toCTB-c/archive/refs/tags/0.1.0.tar.gz"
    sha256 "513689f6f1763dac118e7b08ceb431c1f29fb1d0b471f909ecfc110e9ef47c1a"

    depends_on "libzip" => :build
  
    def install
      system "make"
      bin.install "sl1toctb"
    end
  
    test do
      assert system("sl1toctb -h") != true
    end
  end
  