class Noirwatch < Formula
  desc "Monitor websites for changes and send notifications"
  homepage "https://github.com/binarynoir/noirwatch"
  url "https://github.com/binarynoir/noirwatch/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "dfb6ce23d45a54f919ffed5981c026f04413668e7c66cc300cebe852be3550f5"

  depends_on "bash"

  def install
    bin.install "noirwatch"
    man1.install "noirwatch.1"
  end

  test do
    system "bin/noirwatch", "--version"
  end
end
