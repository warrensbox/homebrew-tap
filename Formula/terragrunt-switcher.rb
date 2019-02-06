class TerragruntSwitcher < Formula
  desc "The tgswitch command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/terragrunt-switcher"
  url "https://github.com/warrensbox/terragrunt-switcher/releases/download/0.2.276/terragrunt-switcher_0.2.276_darwin_amd64.tar.gz"
  version "0.2.276"
  sha256 "e9c39adc3aa5f1601fd692c37a144595a0e8d6ceda80b15c43e5140a71a83194"

  def install
    bin.install "terragrunt-switcher"
  end

  def caveats; <<~EOS
    Type 'tgswitch' on your command line and choose the terragrunt version that you want from the dropdown. This command currently only works on MacOs and Linux
  EOS
  end

  test do
    system "#{bin}/terragrunt-switcher --version"
  end
end
