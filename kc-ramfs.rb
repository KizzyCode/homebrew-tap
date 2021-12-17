class KcRamfs < Formula
    desc "A simple script to create a in-memory filesystem on macOS"
    homepage "https://github.com/KizzyCode/ramfs-shell"
    head "https://github.com/KizzyCode/ramfs-shell.git"
    url "https://github.com/KizzyCode/ramfs-shell/archive/refs/tags/0.1.0.tar.gz"
    sha256 "160a6a4f1fb3ce265f7b68f364ded6eaf3a50f397f4a41a826c9d301ec1530cd"
  
    def install
      bin.install("ramfs")
    end
  
    test do
      assert system("which ramfs") != true
    end
  end
  