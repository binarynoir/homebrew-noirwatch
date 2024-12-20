class Noirwatch < Formula
  desc "Monitor websites for changes and send notifications"
  homepage "https://github.com/binarynoir/noirwatch"
  url "https://github.com/binarynoir/noirwatch/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "939a0eaf208c7ebdb15c46acf76723b40318513932a3e101f18c10916fc64a0f"

  depends_on "bash"

  def install
    bin.install "noirwatch"
    man1.install "noirwatch.1"
  end

  test do
    system "bin/noirwatch", "--version"
  end
end
