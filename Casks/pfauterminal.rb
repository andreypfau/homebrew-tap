cask "pfauterminal" do
  version "0.2.8"
  sha256 "12e922a343d729023d4570dff5fbcc32cd2ca8f971465b7f8e3a34e031e1552b"

  url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.8/pfauterminal-macos-app.zip"
  name "PfauTerminal"
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"

  app "pfauterminal.app"

  zap trash: [
    "~/Library/Preferences/io.github.andreypfau.pfauterminal.plist",
    "~/Library/Caches/io.github.andreypfau.pfauterminal",
  ]
end
