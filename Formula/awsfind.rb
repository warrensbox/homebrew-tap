class Awsfind < Formula
  desc "The awsfind command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/aws-find"
  url "https://github.com/warrensbox/aws-find/releases/download/0.1.207/aws-find_0.1.207_darwin_amd64.tar.gz"
  version "0.1.207"
  sha256 "b9a4b7cff53a76683302d8335f411d8d9878a36a7fb2bab6802fb1a13f1fe897"

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
