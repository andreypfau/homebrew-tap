class Pfauterminal < Formula
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.1.1/pfauterminal-macos-aarch64.tar.gz"
      sha256 "c2219776547fc5fedac9e37dbc275b6b618c4f0b34533ce09d938f373b3bce01"
    elsif Hardware::CPU.intel?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.1.1/pfauterminal-macos-x86_64.tar.gz"
      sha256 "2cd9b82b3d1eb9e430139ab7c2b6579788a9c419a1ec11f620f4e86c12975f65"
    end
  end

  def install
    bin.install "pfauterminal"
  end

  test do
    assert_predicate bin/"pfauterminal", :executable?
  end
end
