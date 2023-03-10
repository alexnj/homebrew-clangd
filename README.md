# clangd homebrew tap

This is a custom [Homebrew](https://brew.sh/) tap for macOS releases of [clangd](https://github.com/clangd/clangd) built with [remote index support](https://clangd.llvm.org/design/remote-index.html#buildingreleases) (`grpc`). The `clangd` binary that is shipped with macOS/XCode is compiled with `mac+xpc` and does not have remote index support.

## How do I install these formulae?

`brew install alexnj/clangd/clangd`

Or `brew tap alexnj/clangd` and then `brew install clangd`.

To install a specific version, `brew install alexnj/clangd/clangd@15.0.6`.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
