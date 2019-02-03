class Appinstall < Formula
  desc "The appinstall command lets you install binary application from github."
  homepage "https://warrensbox.github.io/github-appinstall"
  url "https://github.com/warrensbox/github-appinstaller/releases/download/0.1.55/github-appinstaller_0.1.55_darwin_amd64.tar.gz"
  version "0.1.55"
  sha256 "8c0f1288f618f57a134551aed7cbb2d64466a9521a73a72d3182f8fcf8b0693e"

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
