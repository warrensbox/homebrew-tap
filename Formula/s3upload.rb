class S3upload < Formula
  desc "The s3upload command lets you upload files to s3"
  homepage "https://warrensbox.github.io/s3upload"
  url "https://github.com/warrensbox/s3upload/releases/download/0.1.26/s3upload_0.1.26_darwin_amd64.tar.gz"
  version "0.1.26"
  sha256 "6d3d14777d7fb098a0302bcbc7191b827f6fd4dc2cb67cd52be7b4e14611e688"

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
