class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warrensbox.github.io/terraform-switcher"
  url "https://github.com/warrensbox/terraform-switcher/releases/download/0.4.552/terraform-switcher_0.4.552_darwin_amd64.tar.gz"
  version "0.4.552"
  sha256 "c14a7d10a78074e82ceb73da5cb5d877b083883a39cc1e5a1a2734cf89321ea3"

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
