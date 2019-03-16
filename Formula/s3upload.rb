class S3upload < Formula
  desc "The s3upload command lets you upload files to s3"
  homepage "https://warrensbox.github.io/s3upload"
  url "https://github.com/warrensbox/s3upload/releases/download/0.1.40/s3upload_0.1.40_darwin_amd64.tar.gz"
  version "0.1.40"
  sha256 "fce62783057d790d115f89ae6e687073ee0bbded65ca0bb3aeb9d80cbf4538e0"

  def install
    bin.install "s3upload"
  end

  def caveats; <<~EOS
    Type 's3upload' on your command line and pass -h to see checkout the parameters allowed. This command currently only works on MacOs and Linux
  EOS
  end

  test do
    system "#{bin}/s3upload --version"
  end
end
