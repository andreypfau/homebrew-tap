class Pfauterminal < Formula
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"
  version "0.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v#{version}/pfauterminal-macos-aarch64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    elsif Hardware::CPU.intel?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v#{version}/pfauterminal-macos-x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "pfauterminal"
  end

  test do
    assert_predicate bin/"pfauterminal", :executable?
  end
end
