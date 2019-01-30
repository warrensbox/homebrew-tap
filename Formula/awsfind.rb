class Awsfind < Formula
  desc "The awsfind command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/aws-find"
  url "https://github.com/warrensbox/aws-find/releases/download/0.1.215/aws-find_0.1.215_darwin_amd64.tar.gz"
  version "0.1.215"
  sha256 "2e21d8e9be191a14c112371fddad4ae1ac627fdb2250536374380f92c0819786"

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
