class Tgshift < Formula
  desc "The tgshift command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/terragrunt-switcher"
  url "https://github.com/warrensbox/terragrunt-switcher/releases/download/0.1.41/terragrunt-switcher_0.1.41_darwin_amd64.tar.gz"
  version "0.1.41"
  sha256 "94bdeae18a0014b61501f3bb277a151e7147454addcee942f0c34dea34fd6474"

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
