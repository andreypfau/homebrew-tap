cask "pfauterminal" do
  version "0.2.6"
  sha256 "4b8f74a4cedb43f959429e63ff5dae0c0a3bc49624c7fbc5ebb55b3b58439875"

  url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.6/pfauterminal-macos-app.zip"
  name "PfauTerminal"
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"

  app "pfauterminal.app"

  zap trash: [
    "~/Library/Preferences/io.github.andreypfau.pfauterminal.plist",
    "~/Library/Caches/io.github.andreypfau.pfauterminal",
  ]
end
