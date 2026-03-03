cask "pfauterminal" do
  version "0.2.0"
  sha256 "91c8550c3556a785aa820537958d169cfca4bbc18935099636bc65984ad68827"

  url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.0/pfauterminal-macos-app.zip"
  name "PfauTerminal"
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"

  app "pfauterminal.app"

  zap trash: [
    "~/Library/Preferences/io.github.andreypfau.pfauterminal.plist",
    "~/Library/Caches/io.github.andreypfau.pfauterminal",
  ]
end
