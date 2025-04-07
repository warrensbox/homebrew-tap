# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfswitch < Formula
  desc "The tfswitch command lets you switch between terraform versions."
  homepage "https://warrensbox.github.io/terraform-switcher"
  version "1.4.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/warrensbox/terraform-switcher/releases/download/v1.4.4/terraform-switcher_v1.4.4_darwin_amd64.tar.gz"
      sha256 "69aef144b259e04415971649d11cec0052e9d7cc44797e42294ea0402a62d19e"

      def install
        bin.install "tfswitch"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/warrensbox/terraform-switcher/releases/download/v1.4.4/terraform-switcher_v1.4.4_darwin_arm64.tar.gz"
      sha256 "0af33c2463f3b7dead5b8e1d4bcc73191f76ea67fee12a17b345b280a8f330a1"

      def install
        bin.install "tfswitch"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/warrensbox/terraform-switcher/releases/download/v1.4.4/terraform-switcher_v1.4.4_linux_amd64.tar.gz"
        sha256 "b66ed4e1ed21014b4ebc6fb58a7bc8e66e096e2066e2731af2f434b9841904c6"

        def install
          bin.install "tfswitch"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/warrensbox/terraform-switcher/releases/download/v1.4.4/terraform-switcher_v1.4.4_linux_armv6.tar.gz"
        sha256 "8cac6715fd1085d3071642a4bc9b3d759b08cf941f88e1273e8bda3397cc0e7e"

        def install
          bin.install "tfswitch"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/warrensbox/terraform-switcher/releases/download/v1.4.4/terraform-switcher_v1.4.4_linux_arm64.tar.gz"
        sha256 "1ac077baca69f79ac335a9e90d457de0d015e5bfcac9440b9c1c7fbb60acd07f"

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
