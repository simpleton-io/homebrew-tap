cask "simpleton" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "7a8ccc2dcc6a482d3acf97854f1b988ca676b794eb84abbe64b14b1a20007184",
         intel: "df23748fe824b456cb321ddb3614d54fb0dcdbf90b3961480ef0ee980e821ed2"

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
