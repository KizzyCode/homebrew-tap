cask "kc-opensctoken" do
  version "1.1.0"
  sha256 "cb76f17dc191c861a78e0b4ba1a38c23e03640e33bd1e847b7287c6a9a3fc7f6"

  url "https://github.com/frankmorgner/OpenSCToken/releases/download/v1.1/OpenSCToken-1.1.dmg"
  name "OpenSCToken"
  homepage "https://github.com/frankmorgner/OpenSCToken"

  app "OpenSCTokenApp.app"

  postflight do
    # Register the plugin
    # `sudo -u _securityagent pluginkit -a /Applications/OpenSCTokenApp.app/Contents/PlugIns/OpenSCToken.appex`
    system_command "/usr/bin/sudo",
                   args: ["-u", "_securityagent", "pluginkit", "-a", "#{appdir}/OpenSCTokenApp.app/Contents/PlugIns/OpenSCToken.appex"],
                   sudo: true
  end
end
