class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warren-veerasingam.github.io/terraform-switcher"
  url "https://github.com/warren-veerasingam/terraform-switcher/releases/download/0.2.196/terraform-switcher_0.2.196_darwin_amd64.tar.gz"
  version "0.2.196"
  sha256 "aa5bcd562ab3fad7bb2aac3036eed8c5e115bcaafdbe352e600b088568a602ee"
  
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
