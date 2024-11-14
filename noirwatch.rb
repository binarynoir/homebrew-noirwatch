class Noirwatch < Formula
  desc "Monitor websites for changes and send notifications"
  homepage "https://github.com/binarynoir/noirwatch"
  url "https://github.com/binarynoir/noirwatch/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "a67747f7a7325b2524ead387f5a0a6b0460198b2147c054965bd13802c4c1eff"

  depends_on "md5sha1sum"
  depends_on "jq"

  def install
    bin.install "noirwatch"
    man1.install "noirwatch.1"
  end

  test do
    system "bin/noirwatch", "--version"
  end
end
