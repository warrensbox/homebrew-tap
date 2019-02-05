class Tgswitch < Formula
  desc "The tgswitch command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/terragrunt-switcher"
  url "https://github.com/warrensbox/terragrunt-switcher/releases/download/0.2.210/terragrunt-switcher_0.2.210_darwin_amd64.tar.gz"
  version "0.2.210"
  sha256 "4144281084d5388510cd3c0ed90663d7187484fa3292231e747c5ce0f7a3e3e8"

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
