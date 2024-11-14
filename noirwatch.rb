class Noirwatch < Formula
  desc "Monitor websites for changes and send notifications"
  homepage "https://github.com/binarynoir/noirwatch"
  url "https://github.com/binarynoir/noirwatch/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "61c0bca6b8d58e3107653fd01b82ff1f636cfabf81242da76fc944662e936cfc"

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
