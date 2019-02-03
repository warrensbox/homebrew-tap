class Appinstall < Formula
  desc "The appinstall command lets you install binary application from github."
  homepage "https://warrensbox.github.io/github-appinstall"
  url "https://github.com/warrensbox/github-appinstaller/releases/download/0.1.44/github-appinstaller_0.1.44_darwin_amd64.tar.gz"
  version "0.1.44"
  sha256 "174f6c07dfba5660d1c0ef3e7d74fc291c44dfdb636aa1307411427a26a1fda1"

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
