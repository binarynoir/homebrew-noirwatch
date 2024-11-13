class Noirwatch < Formula
  desc "Monitor web pages for changes"
  homepage "https://github.com/binarynoir/noirwatch"
  url "https://github.com/binarynoir/noirwatch/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "650febf8988367ca20b6076a8b901ad2c40cad001720dcaecf32f002ee5fdf5e"

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
