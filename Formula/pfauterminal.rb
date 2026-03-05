class Pfauterminal < Formula
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.2/pfauterminal-macos-aarch64.tar.gz"
      sha256 "85823d1aae660fd79dd33bbc93a5d4b40d3bc554f13bc4f206f47700148e947c"
    elsif Hardware::CPU.intel?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.2/pfauterminal-macos-x86_64.tar.gz"
      sha256 "ab976f948065f6fa9069416d592772c324562ab63ba1ffb0e02f89ea586cb972"
    end
  end

  def install
    bin.install "pfauterminal"
  end

  test do
    assert_predicate bin/"pfauterminal", :executable?
  end
end
