class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warrensbox.github.io/terraform-switcher"
  url "https://github.com/warrensbox/terraform-switcher/releases/download/0.4.571/terraform-switcher_0.4.571_darwin_amd64.tar.gz"
  version "0.4.571"
  sha256 "1ef7da33885dc82227df329a972b1bc2cce2b85570f5bf1acc7c59e7985e226a"

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
