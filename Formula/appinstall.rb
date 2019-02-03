class Appinstall < Formula
  desc "The appinstall command lets you install binary application from github."
  homepage "https://warrensbox.github.io/github-appinstall"
  url "https://github.com/warrensbox/github-appinstaller/releases/download/0.1.58/github-appinstaller_0.1.58_darwin_amd64.tar.gz"
  version "0.1.58"
  sha256 "b215c7acab5c3c6e73c6fa4dafc2b713cace118d0087df303b0298b358649151"

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
