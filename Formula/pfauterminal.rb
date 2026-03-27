class Pfauterminal < Formula
  desc "A modern GPU-accelerated terminal emulator"
  homepage "https://github.com/andreypfau/pfauterminal"
  version "0.2.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.10/pfauterminal-macos-aarch64.tar.gz"
      sha256 "c47f49694fe57494cd54505696081d934a7d476bd356ee8c7fe569f9936ac455"
    elsif Hardware::CPU.intel?
      url "https://github.com/andreypfau/pfauterminal/releases/download/v0.2.10/pfauterminal-macos-x86_64.tar.gz"
      sha256 "29f3def56efaff2651a78229022c05e1ca80c2f37382c01e68caf5814be67b8f"
    end
  end

  def install
    bin.install "pfauterminal"
  end

  test do
    assert_predicate bin/"pfauterminal", :executable?
  end
end
