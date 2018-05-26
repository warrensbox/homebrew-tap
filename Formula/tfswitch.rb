class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warrensbox.github.io/terraform-switcher"
  url "https://github.com/warrensbox/terraform-switcher/releases/download/0.3.238/terraform-switcher_0.3.238_darwin_amd64.tar.gz"
  version "0.3.238"
  sha256 "6b048d5b397b833b89c8969167ee3bdb3cadce48a606e645af8949580528d622"
  
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
