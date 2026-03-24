class Pfauterminal < Formula
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"
  version "0.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.7/pfauterminal-macos-aarch64.tar.gz"
      sha256 "3d1d4873a2eda8753c72691150861cacf497ee58a116e23faa15c7826ce2712d"
    elsif Hardware::CPU.intel?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.7/pfauterminal-macos-x86_64.tar.gz"
      sha256 "6df4f9ac748efdab614acfde6e4d90efc082e9525049fa2befa7cc2ba0fb3c6e"
    end
  end

  def install
    bin.install "pfauterminal"
  end

  test do
    assert_predicate bin/"pfauterminal", :executable?
  end
end
