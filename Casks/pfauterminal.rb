cask "pfauterminal" do
  version "0.1.1"
  sha256 "362d453fe3febd6d90b53c07b4bd6118b64349a9ea237cd2e7b35ee5fbb81c05"

  url "https://github.com/andreypfau/pfauterminal/releases/download/v0.1.1/pfauterminal-macos-app.zip"
  name "PfauTerminal"
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"

  app "pfauterminal.app"

  zap trash: [
    "~/Library/Preferences/io.github.andreypfau.pfauterminal.plist",
    "~/Library/Caches/io.github.andreypfau.pfauterminal",
  ]
end
