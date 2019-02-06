class Hubapp < Formula
  desc "The hubapp command lets you install binary application from github."
  homepage "https://warrensbox.github.io/hubapp"
  url "https://github.com/warrensbox/hubapp/releases/download/0.2.90/hubapp_0.2.90_darwin_amd64.tar.gz"
  version "0.2.90"
  sha256 "b86b5444f94d557009b4e40a456630b74c7fa04cd1e451af5c868b41c9b95486"

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
