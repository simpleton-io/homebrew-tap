cask "simpleton" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "0627b6e4bcae94e7abede77004127e1b35d516b8a279e60759077cb6609a7fac",
         intel: "bfcffa59e1d8b337f55de5c0dccca735d7b5f002be5505eb25651a73b91741d8"

  url "https://github.com/simpleton-io/releases/releases/download/v#{version}/Simpleton-#{version}-#{arch}.zip"
  name "Simpleton"
  desc "Run coding agents in parallel, share live links, open PRs in one click"
  homepage "https://www.simpleton.io"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Simpleton.app"

  zap trash: [
    "~/Library/Application Support/Simpleton",
    "~/Library/Preferences/io.simpleton.app.plist",
    "~/Library/Saved Application State/io.simpleton.app.savedState",
  ]
end
