class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warren-veerasingam.github.io/terraform-switcher"
  url "https://github.com/warren-veerasingam/terraform-switcher/releases/download/0.2.195/terraform-switcher_0.2.195_darwin_amd64.tar.gz"
  version "0.2.195"
  sha256 "500d3edd516eca158f2a03fdd09180b691b8b4d46eb0d444ffda466a6198d5ca"
  
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
