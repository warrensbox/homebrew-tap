class Tgswitch < Formula
  desc "The tgswitch command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/terragrunt-switcher"
  url "https://github.com/warrensbox/terragrunt-switcher/releases/download/0.2.225/terragrunt-switcher_0.2.225_darwin_amd64.tar.gz"
  version "0.2.225"
  sha256 "2316a349d18420d66c5d3b913dd87fdf44b6e0ff3846fbd5d63f7755f3aeaa6a"

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
