class Tgshift < Formula
  desc "The tgshift command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/terragrunt-switcher"
  url "https://github.com/warrensbox/terragrunt-switcher/releases/download/0.1.92/terragrunt-switcher_0.1.92_darwin_amd64.tar.gz"
  version "0.1.92"
  sha256 "564d5f8b0d1fe635cbfc4c739d8f87ac4870b05376c972d7e666e1eb1d88d650"

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
