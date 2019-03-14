class S3upload < Formula
  desc "The s3upload command lets you upload files to s3"
  homepage "https://warrensbox.github.io/s3upload"
  url "https://github.com/warrensbox/s3upload/releases/download/0.1.34/s3upload_0.1.34_darwin_amd64.tar.gz"
  version "0.1.34"
  sha256 "55edab44c9561b8162e62d501c803983b972518363005f9b19f52a41a6fb2e95"

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
