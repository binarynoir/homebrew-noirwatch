class Noirwatch < Formula
  desc "Monitor websites for changes and send notifications"
  homepage "https://github.com/binarynoir/noirwatch"
  url "https://github.com/binarynoir/noirwatch/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "9901659cc9ccc179cfa3fc5de5354cc146a4f06c60db1b31a5de72e820f9b28f"

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
