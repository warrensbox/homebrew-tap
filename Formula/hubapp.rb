class Hubapp < Formula
  desc "The hubapp command lets you install binary application from github."
  homepage "https://warrensbox.github.io/hubapp"
  url "https://github.com/warrensbox/hubapp/releases/download/0.2.99/hubapp_0.2.99_darwin_amd64.tar.gz"
  version "0.2.99"
  sha256 "b95ea05dae42988fcf552e7a57b2ceb01e46de0adfecb4df653f41a55562857c"

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
