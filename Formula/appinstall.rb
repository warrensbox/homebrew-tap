class Appinstall < Formula
  desc "The appinstall command lets you install binary application from github."
  homepage "https://warrensbox.github.io/github-appinstall"
  url "https://github.com/warrensbox/github-appinstaller/releases/download/0.1.74/github-appinstaller_0.1.74_darwin_amd64.tar.gz"
  version "0.1.74"
  sha256 "f9e4ce1cbfbe2f75f891ecf07ec46b6ec3c58ea76412ad7ce0821ddfedb1d107"

  def install
    bin.install "appinstall"
  end

  def caveats; <<~EOS
    Type 'appinstall install user/repo' on your command line and choose the app version that you want from the dropdown from the GitHub repo. This command currently only works on MacOs and Linux
  EOS
  end

  test do
    system "#{bin}/appinstall --version"
  end
end
