class Pfauterminal < Formula
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.3/pfauterminal-macos-aarch64.tar.gz"
      sha256 "d2f6e307c5c97fa3ac1693f3a83062aaf47c9026236604d55a24d84129c90269"
    elsif Hardware::CPU.intel?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.3/pfauterminal-macos-x86_64.tar.gz"
      sha256 "ad1297817689cbc2dce19f7800f496e9f2dc8aacc695559fee5584e12ca3ff6b"
    end
  end

  def install
    bin.install "pfauterminal"
  end

  test do
    assert_predicate bin/"pfauterminal", :executable?
  end
end
