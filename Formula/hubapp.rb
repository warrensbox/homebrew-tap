# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hubapp < Formula
  desc "The hubapp command lets you install binary application from github"
  homepage "https://warrensbox.github.io/hubapp"
  version "1.1.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/warrensbox/hubapp/releases/download/1.1.11/hubapp_ 1.1.11_Darwin_amd64.tar.gz"
      sha256 "a6e4e1473274c3bdbcf3bd8b6044c511165f04c3a362532df86a6e35101e2d96"

      def install
        bin.install "hubapp"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/warrensbox/hubapp/releases/download/1.1.11/hubapp_ 1.1.11_Darwin_arm64.tar.gz"
      sha256 "f3edba0b63e89b38d3edfe3242ce622450fd0f00ffd3559cedc0cfbf403add39"

      def install
        bin.install "hubapp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/warrensbox/hubapp/releases/download/1.1.11/hubapp_ 1.1.11_Linux_armv6.tar.gz"
      sha256 "3cc13d5867c0259bcf53768acb9a2900fb34690b65ec68acad9c736dcd6d4e27"

      def install
        bin.install "hubapp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/warrensbox/hubapp/releases/download/1.1.11/hubapp_ 1.1.11_Linux_amd64.tar.gz"
      sha256 "e5eff03aa62ff42268c6a9ac436191b3069ca868ca466d0c9acdf8dabdee8515"

      def install
        bin.install "hubapp"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/warrensbox/hubapp/releases/download/1.1.11/hubapp_ 1.1.11_Linux_arm64.tar.gz"
      sha256 "92a46dc66955dca022380050fdc0af3f4a34da5fd752124f14428052ca53bf6b"

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
