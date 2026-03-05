cask "pfauterminal" do
  version "0.2.3"
  sha256 "dceba3bf935e820f1381e93842bb4a5f546dba608d737725efadbaf334183969"

  url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.3/pfauterminal-macos-app.zip"
  name "PfauTerminal"
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"

  app "pfauterminal.app"

  zap trash: [
    "~/Library/Preferences/io.github.andreypfau.pfauterminal.plist",
    "~/Library/Caches/io.github.andreypfau.pfauterminal",
  ]
end
