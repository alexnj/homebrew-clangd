class ClangdAT1506 < Formula
  desc "Language server for C++ and other C-family languages"
  homepage "https://github.com/clangd/clangd/"
  url "https://github.com/clangd/clangd/releases/download/15.0.6/clangd-mac-15.0.6.zip"
  sha256 "208adf698e73174e35e582b00d6c6f811dd98b2adbba754eb7e8224f0d739415"
  license "Apache-2.0"

  resource "clangd-indexing-tools" do
    url "https://github.com/clangd/clangd/releases/download/15.0.6/clangd_indexing_tools-mac-15.0.6.zip"
    sha256 "0798cd4fa455aa9bb5c1ea772ecc4e4b371e1ac4792b284286a010c2903b1456"
  end

  def install
    bin.install Dir["bin/*"]

    # https://clangd.llvm.org/guides/system-headers#how-clangd-finds-those-headers
    # More specifically, https://github.com/clangd/clangd/issues/64#issuecomment-503636072
    resource("clangd-indexing-tools").stage do
      bin.install Dir["bin/*"]
      lib.install Dir["lib/*"]
    end
  end

  test do
    system "#{bin}/clangd", "--version"
  end
end
