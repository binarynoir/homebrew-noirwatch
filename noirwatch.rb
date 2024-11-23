class Noirwatch < Formula
  desc "Monitor websites for changes and send notifications"
  homepage "https://github.com/binarynoir/noirwatch"
  url "https://github.com/binarynoir/noirwatch/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "f6105290729c0cfb7443c31d964948651b64c8b2f1b1644c5862e15a0b377f17"

  depends_on "bash"

  def install
    bin.install "noirwatch"
    man1.install "noirwatch.1"
  end

  test do
    system "bin/noirwatch", "--version"
  end
end
