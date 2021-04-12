class KcMinioHelper < Formula
    desc "A minio helper to avoid plaintext-passwords in config.json"
    homepage "https://github.com/KizzyCode/minio_helper"
    head "https://github.com/KizzyCode/minio_helper.git"
  
    def install
      bin.install "minio.sh" => "minio"
    end
  
    test do
      assert system("which minio") != true
    end
  end
  