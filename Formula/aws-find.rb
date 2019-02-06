class AwsFind < Formula
  desc "The aws-find command lets you switch between terragrunt versions."
  homepage "https://warrensbox.github.io/aws-find"
  url "https://github.com/warrensbox/aws-find/releases/download/0.1.472/aws-find_0.1.472_darwin_amd64.tar.gz"
  version "0.1.472"
  sha256 "3a0fce641aacca4ad08d850eb3b36330465817067087b2f80b2497e5fabae76c"

  def install
    bin.install "aws-find"
  end

  def caveats; <<~EOS
    Type 'aws-find' on your command line and choose the terragrunt version that you want from the dropdown. This command currently only works on MacOs and Linux
  EOS
  end

  test do
    system "#{bin}/aws-find --version"
  end
end
