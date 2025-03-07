# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warrensbox.github.io/terraform-switcher"
  version "1.4.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/warrensbox/terraform-switcher/releases/download/v1.4.1/terraform-switcher_v1.4.1_darwin_amd64.tar.gz"
      sha256 "23075aecc60464b2757cf68cfe9bc4c697dab627bb3135f273408d5d2465af19"

      def install
        bin.install "tfswitch"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/warrensbox/terraform-switcher/releases/download/v1.4.1/terraform-switcher_v1.4.1_darwin_arm64.tar.gz"
      sha256 "d59f9d317bcde2ce06c0bbadb3c7a85bd0e1862abc4e4f577348b21c3e831217"

      def install
        bin.install "tfswitch"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/warrensbox/terraform-switcher/releases/download/v1.4.1/terraform-switcher_v1.4.1_linux_amd64.tar.gz"
        sha256 "5d7dc1808dfe28583ee994c3c9a2bfdf7831c70fd49bad156e2fd8e729fe6943"

        def install
          bin.install "tfswitch"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/warrensbox/terraform-switcher/releases/download/v1.4.1/terraform-switcher_v1.4.1_linux_armv6.tar.gz"
        sha256 "1463ec447599c176adc6759dcd6213bc57a662ecb8f41867bc08a9b5aff3b29b"

        def install
          bin.install "tfswitch"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/warrensbox/terraform-switcher/releases/download/v1.4.1/terraform-switcher_v1.4.1_linux_arm64.tar.gz"
        sha256 "446afd7611d0d5a2798d18be176841594a9dacbcd5a14e415e96b2e90bb200db"

        def install
          bin.install "tfswitch"
        end
      end
    end
  end

  conflicts_with "terraform"

  def caveats
    <<~EOS
      Type 'tfswitch' on your command line and choose Terraform version that you want from the dropdown
    EOS
  end

  test do
    system "#{bin}/tfswitch --version"
  end
end
