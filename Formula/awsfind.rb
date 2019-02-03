class Awsfind < Formula
  desc "The awsfind command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/aws-find"
  url "https://github.com/warrensbox/aws-find/releases/download/0.1.455/aws-find_0.1.455_darwin_amd64.tar.gz"
  version "0.1.455"
  sha256 "2a2173cbb2c97d5c36b15ae93a7319f5943c3c15c372f28c05112c40b07fa61e"

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
