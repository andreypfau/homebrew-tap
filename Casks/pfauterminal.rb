cask "pfauterminal" do
  version "0.1.1"
  sha256 "33f9a8ba79d9e66cd952968d68d50abc8830e20274334b3b31195bc365dea406"

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
