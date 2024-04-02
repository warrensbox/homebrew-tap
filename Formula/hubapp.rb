# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hubapp < Formula
  desc "The hubapp command lets you install binary application from github"
  homepage "https://warrensbox.github.io/hubapp"
  version "1.1.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/warrensbox/hubapp/releases/download/1.1.15/hubapp_ 1.1.15_Darwin_arm64.tar.gz"
      sha256 "d4360a35813e1dab34d72c9895ec97cdc40c56fcab2e7d6e223183e6a5c1e1f2"

      def install
        bin.install "hubapp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/warrensbox/hubapp/releases/download/1.1.15/hubapp_ 1.1.15_Darwin_amd64.tar.gz"
      sha256 "6aad85867aa99b59cd8b01829ee3409a8b7c8bcd2a7fed51d3fdd07670298052"

      def install
        bin.install "hubapp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/warrensbox/hubapp/releases/download/1.1.15/hubapp_ 1.1.15_Linux_armv6.tar.gz"
      sha256 "c3221c04fd5863af4da2c4b86c265fc8f83c8b98976d6df66b6f4e9bb69b4d57"

      def install
        bin.install "hubapp"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/warrensbox/hubapp/releases/download/1.1.15/hubapp_ 1.1.15_Linux_arm64.tar.gz"
      sha256 "d7661fd2df15bd4f625d1516c0cf9ed22fe737a3775f4bb2ca1559b710537338"

      def install
        bin.install "hubapp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/warrensbox/hubapp/releases/download/1.1.15/hubapp_ 1.1.15_Linux_amd64.tar.gz"
      sha256 "419ed7e93c58859cd398d3acb7d73b74bd9f5ca71eb024178c49dc9fd9ad0384"

      def install
        bin.install "hubapp"
      end
    end
  end

  def caveats
    <<~EOS
      Type 'hubapp install user/repo' on your command line and choose the app version that you want from the dropdown from the GitHub repo. This command currently only works on MacOs and Linux
    EOS
  end

  test do
    system "#{bin}/hubapp --version"
  end
end
