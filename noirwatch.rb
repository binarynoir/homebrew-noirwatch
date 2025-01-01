class Noirwatch < Formula
  desc "Monitor websites for changes and send notifications"
  homepage "https://github.com/binarynoir/noirwatch"
  url "https://github.com/binarynoir/noirwatch/archive/refs/tags/v1.3.3.tar.gz"
  sha256 "475282645b3bdaea3fca094105d201b9c8c6355582c7cb2f26b22bae9570c066"

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
