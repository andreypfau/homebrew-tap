class Pfauterminal < Formula
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.1.1/pfauterminal-macos-aarch64.tar.gz"
      sha256 "463fb4d7600101c106c8f68e102377fe690a24e3b22df1ab324e68d40b45a11c"
    elsif Hardware::CPU.intel?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.1.1/pfauterminal-macos-x86_64.tar.gz"
      sha256 "53c315ed82b0847abd175ac0ba512e11de4f7a66c410e369b7a293deb71bb7f7"
    end
  end

  def install
    bin.install "pfauterminal"
  end

  test do
    assert_predicate bin/"pfauterminal", :executable?
  end
end
