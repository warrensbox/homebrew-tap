class Tgswitch < Formula
  desc "The tgswitch command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/tgswitch"
  url "https://github.com/warrensbox/tgswitch/releases/download/0.4.326/tgswitch_0.4.326_darwin_amd64.tar.gz"
  version "0.4.326"
  sha256 "9e3d254155d9ca1d22b0247266ba20d5f76bac7c6e15c005077767748860b5d0"

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
