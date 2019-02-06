class Tgswitch < Formula
  desc "The tgswitch command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/tgswitch"
  url "https://github.com/warrensbox/tgswitch/releases/download/0.3.285/tgswitch_0.3.285_darwin_amd64.tar.gz"
  version "0.3.285"
  sha256 "1347c0d725d05880761ccafa753bd515bb6976f5c4352eac4156ed4e3826d719"

  def install
    bin.install "tgswitch"
  end

  def caveats; <<~EOS
    Type 'tgswitch' on your command line and choose the terragrunt version that you want from the dropdown. This command currently only works on MacOs and Linux
  EOS
  end

  test do
    system "#{bin}/tgswitch --version"
  end
end
