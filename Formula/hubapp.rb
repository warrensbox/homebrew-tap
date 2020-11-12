class Hubapp < Formula
  desc "The hubapp command lets you install binary application from github."
  homepage "https://warrensbox.github.io/hubapp"
  url "https://github.com/warrensbox/hubapp/releases/download/0.2.118/hubapp_0.2.118_darwin_amd64.tar.gz"
  version "0.2.118"
  sha256 "24711ddd8a05b904219da264375eab95a8676c42586d60d2563dbf2ef4b0a032"

  def install
    bin.install "hubapp"
  end

  def caveats; <<~EOS
    Type 'hubapp install user/repo' on your command line and choose the app version that you want from the dropdown from the GitHub repo. This command currently only works on MacOs and Linux
  EOS
  end

  test do
    system "#{bin}/hubapp --version"
  end
end
