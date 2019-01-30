class Awsfind < Formula
  desc "The awsfind command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/aws-find"
  url "https://github.com/warrensbox/aws-find/releases/download/0.1.200/aws-find_0.1.200_darwin_amd64.tar.gz"
  version "0.1.200"
  sha256 "ad8ded0865458d0f0a5f6c9814cda95e38f8450f88637660f115e6b34a8f29dc"

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
