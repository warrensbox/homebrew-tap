class Tgshift < Formula
  desc "The tgshift command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/terragrunt-switcher"
  url "https://github.com/warrensbox/terragrunt-switcher/releases/download/0.1.137/terragrunt-switcher_0.1.137_darwin_amd64.tar.gz"
  version "0.1.137"
  sha256 "4c0e421a3305d865d490a29f1c8b887bf563d793e6ebc552f607dc5b7250ae94"

  def install
    bin.install "tgshift"
  end

  def caveats; <<~EOS
    Type 'tgshift' on your command line and choose the terragrunt version that you want from the dropdown. This command currently only works on MacOs and Linux
  EOS
  end

  test do
    system "#{bin}/tgshift --version"
  end
end
