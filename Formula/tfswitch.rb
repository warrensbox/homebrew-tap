class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warren-veerasingam.github.io/terraform-switcher/"
  url "https://github.com/warren-veerasingam/terraform-switcher/archive/0.2.175.tar.gz"
  head "https://github.com/warren-veerasingam/terraform-switcher.git"
  version "0.2.175"
  sha256 "935e6ec186c0abd4e94c5322f84e5172c05504ca405319f731f9ab14959a2394"
  
  depends_on "git"
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
