class BulkEmailer < Formula
  desc "The bulk-emailer command line tool lets you send messages to multiple recipients simultaneously"
  homepage "https://warrensbox.github.io/bulk-emailer"
  url "https://github.com/warrensbox/bulk-emailer/releases/download/0.1.29/bulk-emailer_0.1.29_darwin_amd64.tar.gz"
  version "0.1.29"
  sha256 "5fb1633e1a677275dff37855ddc791c2753e038bcb82e0fc5cb046e782cd63eb"

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
