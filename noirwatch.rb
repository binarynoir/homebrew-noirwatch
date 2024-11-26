class Noirwatch < Formula
  desc "Monitor websites for changes and send notifications"
  homepage "https://github.com/binarynoir/noirwatch"
  url "https://github.com/binarynoir/noirwatch/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "9687c371d2e6d70340f44a62b8b4335cb5007f4e2328ecdedfe6877e752f3e71"

  depends_on "bash"

  def install
    bin.install "noirwatch"
    man1.install "noirwatch.1"
  end

  test do
    system "bin/noirwatch", "--version"
  end
end
