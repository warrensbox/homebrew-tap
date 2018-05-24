class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warren-veerasingam.github.io/terraform-switcher"
  url "https://github.com/warren-veerasingam/terraform-switcher/releases/download/0.2.191/terraform-switcher_Darwin_x86_64.tar.gz"
  version "0.2.191"
  sha256 "a2861f13976cef64396c1257b4fcc162ca5185b9b9c69e137651fda124e7be18"
  
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
