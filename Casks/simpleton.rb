cask "simpleton" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "b8dc92b8352ed1f8949a933f6d38dd10ab52f87cc72b56e8c40f443812afebbb",
         intel: "1f5d2ea6eb1b180902f5c3f56ca4d7a21714c92cf674e30e8048b9e7ac27c739"

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
