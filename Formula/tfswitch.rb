# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warrensbox.github.io/terraform-switcher"
  version "0.13.1308"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/warrensbox/terraform-switcher/releases/download/0.13.1308/terraform-switcher_0.13.1308_darwin_arm64.tar.gz"
      sha256 "b0c89782854c6c794dae570a6e80d31ea62dcffc8be238a22d673cdd83894e2e"

      def install
        bin.install "tfswitch"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/warrensbox/terraform-switcher/releases/download/0.13.1308/terraform-switcher_0.13.1308_darwin_amd64.tar.gz"
      sha256 "094af43f9d0b311fffc2588ae48e3fd8d9abd9cfb02562fd2451a6e792e19358"

      def install
        bin.install "tfswitch"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/warrensbox/terraform-switcher/releases/download/0.13.1308/terraform-switcher_0.13.1308_linux_armv6.tar.gz"
      sha256 "e7386abc1c6a36859d29390a1282976b478a9bb5927a40e475c9abbf45a3d0ac"

      def install
        bin.install "tfswitch"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/warrensbox/terraform-switcher/releases/download/0.13.1308/terraform-switcher_0.13.1308_linux_arm64.tar.gz"
      sha256 "8fc4aa97b876705305d2d303d7254a4eb5428043d1252ab6f460e26b3d1e7ff7"

      def install
        bin.install "tfswitch"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/warrensbox/terraform-switcher/releases/download/0.13.1308/terraform-switcher_0.13.1308_linux_amd64.tar.gz"
      sha256 "bf35b90cc083509b44182aa79eb0fa39817d60cdb6883bf31cb5c3a0c49dc2dc"

      def install
        bin.install "tfswitch"
      end
    end
  end

  conflicts_with "terraform"

  def caveats
    <<~EOS
      Type 'tfswitch' on your command line and choose the terraform version that you want from the dropdown. This command currently only works on macOS and Linux
    EOS
  end

  test do
    system "#{bin}/tfswitch --version"
  end
end
