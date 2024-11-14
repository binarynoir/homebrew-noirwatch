class Noirwatch < Formula
  desc "Monitor websites for changes and send notifications"
  homepage "https://github.com/binarynoir/noirwatch"
  url "https://github.com/binarynoir/noirwatch/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "73baf33e05484276ced3a5ae306a9b6fa471631ab12fec8b26ea83fa8a037232"

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
