# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warrensbox.github.io/terraform-switcher"
  version "0.12.1168"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/warrensbox/terraform-switcher/releases/download/0.12.1168/terraform-switcher_0.12.1168_darwin_amd64.tar.gz"
      sha256 "c064d00f7bc80d6f68c54d811892f7588e873f73543ae959e476a0ff1c9579bf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/warrensbox/terraform-switcher/releases/download/0.12.1168/terraform-switcher_0.12.1168_darwin_arm64.tar.gz"
      sha256 "07d87e8485c9fb46df63dd33a10937058b168cdc39ae9b4213fa16678d6eabc7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/warrensbox/terraform-switcher/releases/download/0.12.1168/terraform-switcher_0.12.1168_linux_amd64.tar.gz"
      sha256 "4dfa4697e922858b7d1095b33ce9615c5213eac91557da26c7098fb08f45fe8c"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/warrensbox/terraform-switcher/releases/download/0.12.1168/terraform-switcher_0.12.1168_linux_armv6.tar.gz"
      sha256 "95e0d6fd06ed6b3d2d76a4ef422ee6f7ccba6eaaf9619ee503d86f5aff80c463"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/warrensbox/terraform-switcher/releases/download/0.12.1168/terraform-switcher_0.12.1168_linux_arm64.tar.gz"
      sha256 "18b629608904135b2b0186d62f1b4f044a79f331b89eb2e2e6d758e3af9e4f3b"
    end
  end

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
