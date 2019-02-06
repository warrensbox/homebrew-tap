class Tgswitch < Formula
  desc "The tgswitch command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/terragrunt-switcher"
  url "https://github.com/warrensbox/terragrunt-switcher/releases/download/0.2.213/terragrunt-switcher_0.2.213_darwin_amd64.tar.gz"
  version "0.2.213"
  sha256 "a425eeed55f1e2d3062255c0932d00d27b5d847e1484133f1292ed9372bf6d6d"

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
