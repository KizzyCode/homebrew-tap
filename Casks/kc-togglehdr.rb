cask "kc-togglehdr" do
  version "2025-05-15"
  sha256 "892d8acf36c9500b2319b025d2bbc797f0768f95f8c30708eae90bea2e3640de"

  url "https://github.com/alin23/mac-utils/raw/30a67ba920c493168cf6a74b154a2e335da9a36f/bin/ToggleHDR"
  name "ToggleHDR"
  desc "Programmatically toggle HDR if the checkbox is available in Display Preferences"
  homepage "https://github.com/alin23/mac-utils"

  depends_on macos: ">= :sonoma"

  binary "ToggleHDR", target: "togglehdr"
end
