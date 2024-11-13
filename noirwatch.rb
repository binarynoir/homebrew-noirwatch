class Noirwatch < Formula
  desc "Monitor web pages for changes"
  homepage "https://github.com/binarynoir/noirwatch"
  url "https://github.com/binarynoir/noirwatch/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "c884f03172f8f6c3a0d0cab941d8c6ec7a1d99df0816fb6ce199f624174abde7"

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
