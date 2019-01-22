cask "kc-safari-fido-u2f" do
  version "0.2.5"
  sha256 "74b80df7997b6d0811a32a31fa6cc29058d0ee4027bd0f784f1d8abf9561f612"

  url "https://github.com/Safari-FIDO-U2F/Safari-FIDO-U2F/releases/download/2.0b5/Safari.FIDO.U2F.zip"
  name "Safari FIDO U2F"
  homepage "https://github.com/Safari-FIDO-U2F/Safari-FIDO-U2F"

  app "Safari FIDO U2F.app"

  postflight do
    system_command "/usr/bin/open", args: ["#{appdir}/#{app}"]
  end
end
