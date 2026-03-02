cask "pfauterminal" do
  version "0.1.1"
  sha256 "5f2befe546d9536279175710f0d738dad52cedcedb0bca49fa56cedfb52e69a7"

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
