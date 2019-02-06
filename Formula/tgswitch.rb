class Tgswitch < Formula
  desc "The tgswitch command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/tgswitch"
  url "https://github.com/warrensbox/tgswitch/releases/download/0.3.282/tgswitch_0.3.282_darwin_amd64.tar.gz"
  version "0.3.282"
  sha256 "37dce35534305f92f32478161efe628bc32ee1a7f60244df5ff5c18fa2631acb"

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
