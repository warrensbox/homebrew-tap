class Tgshift < Formula
  desc "The tgshift command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/terragrunt-switcher"
  url "https://github.com/warrensbox/terragrunt-switcher/releases/download/0.1.118/terragrunt-switcher_0.1.118_darwin_amd64.tar.gz"
  version "0.1.118"
  sha256 "7f1e2996d620e9430b0bb6ddb81792c67d72455842c8679e52aed1ae80a8c364"

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
