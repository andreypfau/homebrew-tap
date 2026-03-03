class Pfauterminal < Formula
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.0/pfauterminal-macos-aarch64.tar.gz"
      sha256 "9e694456fe093cc4b7fe48859d9aed7d4d9b195ee3c98b11af69d27120aeaf8d"
    elsif Hardware::CPU.intel?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.0/pfauterminal-macos-x86_64.tar.gz"
      sha256 "8c1c517b21f04e5bfb3ee351bc6aa1d19d1da0a3550f1267aecd5245d4b61b6b"
    end
  end

  def install
    bin.install "pfauterminal"
  end

  test do
    assert_predicate bin/"pfauterminal", :executable?
  end
end
