class BulkEmailer < Formula
  desc "The bulk-emailer command line tool lets you send messages to multiple recipients simultaneously"
  homepage "https://warrensbox.github.io/bulk-emailer"
  url "https://github.com/warrensbox/bulk-emailer/releases/download/0.1.26/bulk-emailer_0.1.26_darwin_amd64.tar.gz"
  version "0.1.26"
  sha256 "d28210f6a9017f53dab607076b3738ae39d60d6d94b3293d5dfe4a1d57f8999d"

  def install
    bin.install "bulk-emailer"
  end

  def caveats; <<~EOS
    Type 'bulk-emailer' to send messages to multiple recipients simultaneously
  EOS
  end

  test do
    system "#{bin}/bulk-emailer --version"
  end
end
