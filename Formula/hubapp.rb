class Hubapp < Formula
  desc "The hubapp command lets you install binary application from github."
  homepage "https://warrensbox.github.io/hubapp"
  url "https://github.com/warrensbox/hubapp/releases/download/0.2.96/hubapp_0.2.96_darwin_amd64.tar.gz"
  version "0.2.96"
  sha256 "5541ffe519c90660cdd4ea1e186f4e215f8a1760f5842d3beed824d596b81e41"

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
