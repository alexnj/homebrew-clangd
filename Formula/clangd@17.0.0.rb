class ClangdAT1700 < Formula
  desc "Language server for C++ and other C-family languages"
  homepage "https://github.com/clangd/clangd/"
  url "https://github.com/clangd/clangd/releases/download/snapshot_20230416/clangd-mac-snapshot_20230416.zip"
  sha256 "a2722716278a1ad5d2b23766647a5242ebd2cf09dfc0759c0f0824d07ffdd765"
  license "Apache-2.0"
  revision 0

  resource "clangd-indexing-tools" do
    url "https://github.com/clangd/clangd/releases/download/snapshot_20230416/clangd_indexing_tools-mac-snapshot_20230416.zip"
    sha256 "60e3744a9563ed537fa45e883d030f3d7edb221a108a050df42a0af7019e6e87"
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
