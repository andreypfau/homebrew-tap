cask "pfauterminal" do
  version "0.2.2"
  sha256 "fdc5d51c66dd2d300786fc1f4233daf20864749728585ee7c966e44597eb0359"

  url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.2/pfauterminal-macos-app.zip"
  name "PfauTerminal"
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"

  app "pfauterminal.app"

  zap trash: [
    "~/Library/Preferences/io.github.andreypfau.pfauterminal.plist",
    "~/Library/Caches/io.github.andreypfau.pfauterminal",
  ]
end
