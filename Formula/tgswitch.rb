class Tgswitch < Formula
  desc "The tgswitch command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/tgswitch"
  url "https://github.com/warrensbox/tgswitch/releases/download/0.4.315/tgswitch_0.4.315_darwin_amd64.tar.gz"
  version "0.4.315"
  sha256 "96142ce999d789bbbe53b65799ddb243d573fc4b252c251a4cb1fb8274f40a08"

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
