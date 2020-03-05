class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warrensbox.github.io/terraform-switcher"
  url "https://github.com/warrensbox/terraform-switcher/releases/download/0.7.817/terraform-switcher_0.7.817_darwin_amd64.tar.gz"
  version "0.7.817"
  sha256 "ebc355c40f9582096502df11d51b18e00c12e3e5a7f9780b50e2c870cb342ea4"
  
  conflicts_with "terraform"

  def install
    bin.install "tfswitch"
  end

  def caveats; <<~EOS
    Type 'tfswitch' on your command line and choose the terraform version that you want from the dropdown. This command currently only works on MacOs and Linux
  EOS
  end

  test do
    system "#{bin}/tfswitch --version"
  end
end
