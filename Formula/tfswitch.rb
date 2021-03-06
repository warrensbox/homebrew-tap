class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warrensbox.github.io/terraform-switcher"
  version "0.10.1010"
  
  conflicts_with "terraform"

  if OS.mac?
    url "https://github.com/warrensbox/terraform-switcher/releases/download/0.10.1010/terraform-switcher_0.10.1010_darwin_amd64.tar.gz"
    sha256 "93493513fba4816f3dea938b70b5a360c05c38af22151abcd3a07582dc33fa9c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/warrensbox/terraform-switcher/releases/download/0.10.1010/terraform-switcher_0.10.1010_linux_amd64.tar.gz"
    sha256 "cad5c991d0cef09d1e5dfdf0e25e51fb30a2817d8c89dbf4b318bd36e73c7ac1"
  end

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
