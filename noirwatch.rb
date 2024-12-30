class Noirwatch < Formula
  desc "Monitor websites for changes and send notifications"
  homepage "https://github.com/binarynoir/noirwatch"
  url "https://github.com/binarynoir/noirwatch/archive/refs/tags/v1.3.2.tar.gz"
  sha256 "24643a71d0337492295cdb8f7f14052816af791e98a0e01896551fc6ad2a7b04"

  depends_on "bash"
  depends_on "coreutils"

  def install
    bin.install "noirwatch"
    man1.install "noirwatch.1"
  end

  test do
    system "bin/noirwatch", "--version"
  end
end
