class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warrensbox.github.io/terraform-switcher"
  url "https://github.com/warrensbox/terraform-switcher/releases/download/0.3.256/terraform-switcher_0.3.256_darwin_amd64.tar.gz"
  version "0.3.256"
  sha256 "1a42b06d5c6b6319d560471c8a1f7c7439fdbbd0694db26719a9095def3bc0b5"

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
