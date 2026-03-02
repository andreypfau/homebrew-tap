class Pfauterminal < Formula
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.1.1/pfauterminal-macos-aarch64.tar.gz"
      sha256 "53fbcf5473058ed1d49becec39381b927b2f68038b5c7cdf4b4e21b432997f53"
    elsif Hardware::CPU.intel?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.1.1/pfauterminal-macos-x86_64.tar.gz"
      sha256 "01677da5ba63fb675326651381d10639cbcbafc9f7fd91042dc3b143c1064828"
    end
  end

  def install
    bin.install "pfauterminal"
  end

  test do
    assert_predicate bin/"pfauterminal", :executable?
  end
end
