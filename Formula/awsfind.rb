class Awsfind < Formula
  desc "The awsfind command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/aws-find"
  url "https://github.com/warrensbox/aws-find/releases/download/0.1.448/aws-find_0.1.448_darwin_amd64.tar.gz"
  version "0.1.448"
  sha256 "18777a6394eebbfa000e51b551c637cc0e37f1f17a3c602d9e7bd179bd84b641"

  def install
    bin.install "awsfind"
  end

  def caveats; <<~EOS
    Type 'awsfind' on your command line and choose the terragrunt version that you want from the dropdown. This command currently only works on MacOs and Linux
  EOS
  end

  test do
    system "#{bin}/awsfind --version"
  end
end
