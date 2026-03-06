class Pfauterminal < Formula
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.4/pfauterminal-macos-aarch64.tar.gz"
      sha256 "3f52c57624281e93d62fecebc6cfe193924384fe1dddd696d23fb215fce6a7ca"
    elsif Hardware::CPU.intel?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.4/pfauterminal-macos-x86_64.tar.gz"
      sha256 "146bdf84b52bc4a8e650b15588aab796fdb3b638882fb604c65a520bc3a67d0b"
    end
  end

  def install
    bin.install "pfauterminal"
  end

  test do
    assert_predicate bin/"pfauterminal", :executable?
  end
end
