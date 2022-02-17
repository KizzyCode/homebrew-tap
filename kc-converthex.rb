class KcConverthex < Formula
   desc "Converts an hex-string to a hex-string-literal/base64-string/etc."
   homepage "https://github.com/KizzyCode/converthex"
   head "https://github.com/KizzyCode/converthex.git"

   def install
     bin.install "convert_hex" => "converthex"
   end

   test do
     assert system("which converthex") != true
   end
 end
