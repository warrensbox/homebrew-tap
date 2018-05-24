class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warren-veerasingam.github.io/terraform-switcher/"
  url "https://github.com/warren-veerasingam/terraform-switcher/archive/0.2.189.tar.gz"
  head "https://github.com/warren-veerasingam/terraform-switcher.git"
  version "0.2.189"
  sha256 "5f2a4a647dcffca5c886d996c810193f701b5ed2556b2d1a8b4b99398376a8d9"
  
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
