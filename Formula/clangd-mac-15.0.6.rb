class ClangdMac1506 < Formula
  desc "Language server for C++ and other C-family languages"
  homepage "https://github.com/clangd/clangd/"
  url "https://github.com/clangd/clangd/releases/download/15.0.6/clangd-mac-15.0.6.zip"
  sha256 "208adf698e73174e35e582b00d6c6f811dd98b2adbba754eb7e8224f0d739415"
  license "Apache 2.0"

  def install
    prefix.install Dir["bin"]
  end

  test do
    system "#{bin}/clangd", "--version"
  end
end
