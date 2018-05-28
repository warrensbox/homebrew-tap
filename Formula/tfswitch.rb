class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warrensbox.github.io/terraform-switcher"
  url "https://github.com/warrensbox/terraform-switcher/releases/download/0.3.379/terraform-switcher_0.3.379_darwin_amd64.tar.gz"
  version "0.3.379"
  sha256 "29dab708fc1c46d1c10fd4755fbfff568870bd18c6c12a9177b9b64fc16f3ef6"

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
