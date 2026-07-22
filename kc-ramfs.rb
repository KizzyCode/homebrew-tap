class KcRamfs < Formula
    desc "A simple script to create a in-memory filesystem on macOS"
    homepage "https://github.com/KizzyCode/ramfs-shell"
    head "https://github.com/KizzyCode/ramfs-shell.git"
    url "https://github.com/KizzyCode/ramfs-shell/archive/refs/tags/0.2.0.tar.gz"
    sha256 "0b2b5759b43a62f144ec749baac7cbd439dc35f81f49372c0147822d89aa77d7"
  
    def install
      bin.install("ramfs")
    end
  
    test do
      assert system("which ramfs") != true
    end
  end
  