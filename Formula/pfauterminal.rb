class Pfauterminal < Formula
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.1/pfauterminal-macos-aarch64.tar.gz"
      sha256 "d9baf5fc5406198c6780cae3d481ede3a813603a516d79c0ab75327ffecb9d92"
    elsif Hardware::CPU.intel?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.1/pfauterminal-macos-x86_64.tar.gz"
      sha256 "1b1c9a5390677bef3bcd1e36f85273804a946ae9e8683ce94a6b0f04174c721e"
    end
  end

  def install
    bin.install "pfauterminal"
  end

  test do
    assert_predicate bin/"pfauterminal", :executable?
  end
end
