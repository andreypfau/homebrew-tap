cask "pfauterminal" do
  version "0.2.10"
  sha256 "8263b09e93c12c76a96eb34d55522f0ca19f771ec9fe172a74013a78fcf8f81d"

  url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.10/pfauterminal-macos-app.zip"
  name "PfauTerminal"
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"

  app "pfauterminal.app"

  zap trash: [
    "~/Library/Preferences/io.github.andreypfau.pfauterminal.plist",
    "~/Library/Caches/io.github.andreypfau.pfauterminal",
  ]
end
