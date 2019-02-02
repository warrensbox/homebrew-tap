class Appinstall < Formula
  desc "The appinstall command lets you install binary application from github."
  homepage "https://warrensbox.github.io/github-appinstall"
  url "https://github.com/warrensbox/github-appinstaller/releases/download/0.1.17/github-appinstaller_0.1.17_darwin_amd64.tar.gz"
  version "0.1.17"
  sha256 "96980f0c7a9aab45fb25ec1e5abd237725eb9d6575d4a8fc2697f6d5f198ed26"

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
