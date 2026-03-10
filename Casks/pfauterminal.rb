cask "pfauterminal" do
  version "0.2.5"
  sha256 "22ca0d16bd3c22b5cfc6cd39cad97168ec181bcfa068eaeb57ffbb83d9c6cb44"

  url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.5/pfauterminal-macos-app.zip"
  name "PfauTerminal"
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"

  app "pfauterminal.app"

  zap trash: [
    "~/Library/Preferences/io.github.andreypfau.pfauterminal.plist",
    "~/Library/Caches/io.github.andreypfau.pfauterminal",
  ]
end
