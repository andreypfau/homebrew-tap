cask "pfauterminal" do
  version "0.2.7"
  sha256 "103416cbae59f76a7f95e64a5be4266615005dc0f300d8be1ab922ad1decf39d"

  url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.7/pfauterminal-macos-app.zip"
  name "PfauTerminal"
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"

  app "pfauterminal.app"

  zap trash: [
    "~/Library/Preferences/io.github.andreypfau.pfauterminal.plist",
    "~/Library/Caches/io.github.andreypfau.pfauterminal",
  ]
end
