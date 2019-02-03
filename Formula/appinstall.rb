class Appinstall < Formula
  desc "The appinstall command lets you install binary application from github."
  homepage "https://warrensbox.github.io/github-appinstall"
  url "https://github.com/warrensbox/github-appinstaller/releases/download/0.1.52/github-appinstaller_0.1.52_darwin_amd64.tar.gz"
  version "0.1.52"
  sha256 "5fb87ebeb5ae628979e2ecdbecb725737da6954d0621dca464fa5e2c4c9cde6f"

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
