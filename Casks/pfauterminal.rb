cask "pfauterminal" do
  version "0.2.4"
  sha256 "84b4954cbed3f9f1c768c71f22132f51a0d1614882bcbbed545b0900ab7546dc"

  url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.4/pfauterminal-macos-app.zip"
  name "PfauTerminal"
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"

  app "pfauterminal.app"

  zap trash: [
    "~/Library/Preferences/io.github.andreypfau.pfauterminal.plist",
    "~/Library/Caches/io.github.andreypfau.pfauterminal",
  ]
end
