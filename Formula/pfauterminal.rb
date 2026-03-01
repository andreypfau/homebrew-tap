class Pfauterminal < Formula
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.1.0/pfauterminal-macos-aarch64.tar.gz"
      sha256 "572b35fcacd3766dc278fea9d02986846fb87abb60e7cd9831d4f03799da8170"
    elsif Hardware::CPU.intel?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.1.0/pfauterminal-macos-x86_64.tar.gz"
      sha256 "54629fa813230dec5e8ab23308977f4a35b1d3c60a6959889831f64965923a32"
    end
  end

  def install
    bin.install "pfauterminal"
  end

  test do
    assert_predicate bin/"pfauterminal", :executable?
  end
end
