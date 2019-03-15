class S3upload < Formula
  desc "The s3upload command lets you upload files to s3"
  homepage "https://warrensbox.github.io/s3upload"
  url "https://github.com/warrensbox/s3upload/releases/download/0.1.37/s3upload_0.1.37_darwin_amd64.tar.gz"
  version "0.1.37"
  sha256 "d3e2aae7cf4dd1609552774a4e836793b1661625dd0e904e38e268440f66f3da"

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
