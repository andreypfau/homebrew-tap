cask "pfauterminal" do
  version "0.2.9"
  sha256 "b7cb3e476c55830bbd1a10741ac6a22b1a6c25dcc20a78bc3afd4dbee008afe4"

  url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.9/pfauterminal-macos-app.zip"
  name "PfauTerminal"
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"

  app "pfauterminal.app"

  zap trash: [
    "~/Library/Preferences/io.github.andreypfau.pfauterminal.plist",
    "~/Library/Caches/io.github.andreypfau.pfauterminal",
  ]
end
