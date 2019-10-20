class Tgswitch < Formula
  desc "The tgswitch command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/tgswitch"
  url "https://github.com/warrensbox/tgswitch/releases/download/0.3.308/tgswitch_0.3.308_darwin_amd64.tar.gz"
  version "0.3.308"
  sha256 "554f8bd63bc0595cc08f40d9a3277918eaa297453981e32dda9c28fa2e06b93b"

  def install
    bin.install "tgswitch"
  end

  def caveats; <<~EOS
    Type 'tgswitch' on your command line and choose the terragrunt version that you want from the dropdown. This command currently only works on MacOs and Linux
  EOS
  end

  test do
    system "#{bin}/tgswitch --version"
  end
end
