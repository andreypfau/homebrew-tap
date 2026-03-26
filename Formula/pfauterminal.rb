class Pfauterminal < Formula
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"
  version "0.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.8/pfauterminal-macos-aarch64.tar.gz"
      sha256 "2bd2331d0001325330736a6804c476fa376d8d8dd9427ff578142637f22faf83"
    elsif Hardware::CPU.intel?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.8/pfauterminal-macos-x86_64.tar.gz"
      sha256 "ade9b4882aaa11d856c9443e3d23ce31a5b60144cd7081aa4ba4dc992491336f"
    end
  end

  def install
    bin.install "pfauterminal"
  end

  test do
    assert_predicate bin/"pfauterminal", :executable?
  end
end
