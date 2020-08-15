class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warrensbox.github.io/terraform-switcher"
  on_macos do
    url "https://github.com/warrensbox/terraform-switcher/releases/download/0.8.832/terraform-switcher_0.8.832_darwin_amd64.tar.gz"
    sha256 "e9ec302dc93f53e5a16d89431d952e1bc251605c0fc529194246cd97442dbd0a"
  end
  on_linux do
    url "https://github.com/warrensbox/terraform-switcher/releases/download/0.8.832/terraform-switcher_0.8.832_linux_amd64.tar.gz"
    sha256 "8588352b2e98a9e619278985dd986dfc837f5ac5d81310dfffc5e9d9eb7c946d"
  end
  version "0.8.832"
  
  conflicts_with "terraform"

  def install
    bin.install "tfswitch"
  end

  def caveats; <<~EOS
    Type 'tfswitch' on your command line and choose the terraform version that you want from the dropdown. This command currently only works on macOS and Linux.
  EOS
  end

  test do
    system "#{bin}/tfswitch --version"
  end
end
