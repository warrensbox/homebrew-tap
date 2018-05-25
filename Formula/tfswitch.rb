class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warren-veerasingam.github.io/terraform-switcher"
  url "https://github.com/warren-veerasingam/terraform-switcher/releases/download/0.2.192/terraform-switcher_darwin_amd64_0.2_.tar.gz"
  version "0.2.192"
  sha256 "acedc4886a5d63f71c271597d203954102ddb05db8c2e70a4c4b53204d88f3cd"
  
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
