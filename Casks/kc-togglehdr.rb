cask "kc-togglehdr" do
  version "2024-03-24"
  sha256 "c83c42e9612b55ddd3e0db2859d99b85114d60fe30acc8a5cafb3a9d3e61d6aa"

  url "https://github.com/alin23/mac-utils/raw/08194b0319594af49d0725c152d5a750cc80604f/bin/ToggleHDR"
  name "ToggleHDR"
  desc "Programmatically toggle HDR if the checkbox is available in Display Preferences"
  homepage "https://github.com/alin23/mac-utils"

  depends_on macos: ">= :sonoma"

  binary "ToggleHDR", target: "togglehdr"
end
