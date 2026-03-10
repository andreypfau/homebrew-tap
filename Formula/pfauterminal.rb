class Pfauterminal < Formula
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.6/pfauterminal-macos-aarch64.tar.gz"
      sha256 "64c218de57358ce67470f72977d3f052103851f19a7383c409f7c9c092d59508"
    elsif Hardware::CPU.intel?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.6/pfauterminal-macos-x86_64.tar.gz"
      sha256 "7cc7b96eb2e2258685b01dcedabe765d344a4ff0393d89040a43a681ae0c9e79"
    end
  end

  def install
    bin.install "pfauterminal"
  end

  test do
    assert_predicate bin/"pfauterminal", :executable?
  end
end
