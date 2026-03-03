cask "pfauterminal" do
  version "0.2.1"
  sha256 "572d94599e0162c9a99c39feb53615f8b19d610e9c5bb7e2d7150766b0769f18"

  url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.1/pfauterminal-macos-app.zip"
  name "PfauTerminal"
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"

  app "pfauterminal.app"

  zap trash: [
    "~/Library/Preferences/io.github.andreypfau.pfauterminal.plist",
    "~/Library/Caches/io.github.andreypfau.pfauterminal",
  ]
end
