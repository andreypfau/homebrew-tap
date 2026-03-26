class Pfauterminal < Formula
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"
  version "0.2.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.9/pfauterminal-macos-aarch64.tar.gz"
      sha256 "76ca676aa5775ea894b240cd8fd3b81eda5d9a7dd5be9e4579ef28cdf904ebc6"
    elsif Hardware::CPU.intel?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.9/pfauterminal-macos-x86_64.tar.gz"
      sha256 "508a853a3e8bb421d10e1857b44c2bb0f922a0a5ba208ad3edc9eec4eb93575e"
    end
  end

  def install
    bin.install "pfauterminal"
  end

  test do
    assert_predicate bin/"pfauterminal", :executable?
  end
end
