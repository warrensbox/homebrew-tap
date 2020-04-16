class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warrensbox.github.io/terraform-switcher"
  url "https://github.com/warrensbox/terraform-switcher/releases/download/0.8.832/terraform-switcher_0.8.832_darwin_amd64.tar.gz"
  version "0.8.832"
  sha256 "e9ec302dc93f53e5a16d89431d952e1bc251605c0fc529194246cd97442dbd0a"
  
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
