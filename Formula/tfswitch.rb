class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warren-veerasingam.github.io/terraform-switcher/"
  url "https://github.com/warren-veerasingam/terraform-switcher/archive/0.2.174.tar.gz"
  head "https://github.com/warren-veerasingam/terraform-switcher.git"
  version "0.2.174"
  sha256 "1fcb2536fc1596ce62550d0a88af8ea379a02cec303795a6a88c479fdcb1e5b8"
  
  depends_on "git"
  depends_on "make" => :build
  depends_on "gcc" => :build
  depends_on "go" => :build
  
  conflicts_with "terraform"

  def install
    bin.install "tfswitch"
  end

  def caveats; <<~EOS
    Type 'tfswitch' on your command line and choose the terraform version that you want from the dropdown. This command currently only works on MacOs and Linux
  EOS
  end

  test do
    system "#{bin}/tfswitch --version"
  end
end
