cask "simpleton" do
  arch arm: "arm64", intel: "x64"

  version "0.2.3"
  sha256 arm:   "1b4b5473574341498c9cf14976c571b4cb5a97a45df5e72b31cecf66861a2464",
         intel: "8f633e1502861a25a05b364ce0c3ee5f280fadf491320714186bcaa029f87d6e"

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
