cask "simpleton" do
  arch arm: "arm64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "878f5757ae065871d286d0210aa772450f8a8aba258709ed8f8beb374f15ac09",
         intel: "b6683ff06ffbeeffaccf551075fb6ce72cbbdbd795f1501f9c5a09aae1f4e462"

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
