class {{.ProjectName}} < Formula
  desc "The tgswitch command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/terragrunt-switcher"
  url "https://github.com/warrensbox/terragrunt-switcher/releases/download/0.2.273/terragrunt-switcher_0.2.273_darwin_amd64.tar.gz"
  version "0.2.273"
  sha256 "af8278173a1ae993a93d9ee5d409d6bd44dff0d1b7f978abf457283fad8194d3"

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
