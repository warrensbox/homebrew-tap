class Tgshift < Formula
  desc "The tgshift command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/terragrunt-switcher"
  url "https://github.com/warrensbox/terragrunt-switcher/releases/download/0.1.67/terragrunt-switcher_0.1.67_darwin_amd64.tar.gz"
  version "0.1.67"
  sha256 "c97b949363bdfab95751aff1f6e69d4b2a3726a2514e561c743c1e5f7df9b822"

  def install
    bin.install "tgshift"
  end

  def caveats; <<~EOS
    Type 'tgshift' on your command line and choose the terragrunt version that you want from the dropdown. This command currently only works on MacOs and Linux
  EOS
  end

  test do
    system "#{bin}/tgshift --version"
  end
end
