class Tgswitch < Formula
  desc "The tgswitch command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/terragrunt-switcher"
  url "https://github.com/warrensbox/terragrunt-switcher/releases/download/0.2.206/terragrunt-switcher_0.2.206_darwin_amd64.tar.gz"
  version "0.2.206"
  sha256 "810b0d2c7ac143c9f397ef75d42d60f2b97c4da90faebdcb5309c1f9070442d4"

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
