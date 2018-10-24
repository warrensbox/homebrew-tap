class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warrensbox.github.io/terraform-switcher"
  url "https://github.com/warrensbox/terraform-switcher/releases/download/0.4.595/terraform-switcher_0.4.595_darwin_amd64.tar.gz"
  version "0.4.595"
  sha256 "854ef75e2ec0b3fd893da000ad6d808ea1ce4578f6e5368ee224eca7ac94898f"

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
