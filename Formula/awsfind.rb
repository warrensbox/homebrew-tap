class Awsfind < Formula
  desc "The awsfind command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/aws-find"
  url "https://github.com/warrensbox/aws-find/releases/download/0.1.417/aws-find_0.1.417_darwin_amd64.tar.gz"
  version "0.1.417"
  sha256 "1cb73449046b96bb1f2c41e50f6b47065d83c559d92a3b8e6c6026d6952ba9ef"

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
