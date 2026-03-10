class Pfauterminal < Formula
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.5/pfauterminal-macos-aarch64.tar.gz"
      sha256 "2caf0297ca3a7a589a2d5fe67a2fe0ffe47774bb9e580058a71934ff89f8bdb9"
    elsif Hardware::CPU.intel?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.5/pfauterminal-macos-x86_64.tar.gz"
      sha256 "e9f3676d78dd6c048f12e19a5eeb60dff9c767a5311604756d4561edcf71526b"
    end
  end

  def install
    bin.install "pfauterminal"
  end

  test do
    assert_predicate bin/"pfauterminal", :executable?
  end
end
