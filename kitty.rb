# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kitty < Formula
  desc ""
  homepage ""
  version "0.1.0-alpha.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ImSingee/kitty/releases/download/v0.1.0-alpha.8/kitty-0.1.0-alpha.8-darwin.arm64.tar.gz"
      sha256 "9f26594f027e7bd361ff65061a195ebcf63284248d6e36e14417bc5ee06fc863"

      def install
        bin.install "kitty"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ImSingee/kitty/releases/download/v0.1.0-alpha.8/kitty-0.1.0-alpha.8-darwin.amd64.tar.gz"
      sha256 "b4037d935e308927ddf0acd6d2008942d22425f0edbf83e5a0769233a2186184"

      def install
        bin.install "kitty"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ImSingee/kitty/releases/download/v0.1.0-alpha.8/kitty-0.1.0-alpha.8-linux.amd64.tar.gz"
      sha256 "3731f0b904501b1c13c37a8786e1eeb895cdfc0d9475fb1893b7dad928ed1e43"

      def install
        bin.install "kitty"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ImSingee/kitty/releases/download/v0.1.0-alpha.8/kitty-0.1.0-alpha.8-linux.arm64.tar.gz"
      sha256 "169fc7b497d74c31615480641db5c00e805911f0b6d63a2f268620ce887253a6"

      def install
        bin.install "kitty"
      end
    end
  end

  test do
    system "#{bin}/foo --version"
  end
end
