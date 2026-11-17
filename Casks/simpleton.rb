cask "simpleton" do
  arch arm: "arm64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "9f8672c6907efeaa87378c75c3f635c24a96d5fc0003850df8cad0e0d168b354",
         intel: "69c5f02e3479a969cf5c4d6e2f413b574eae8c8c464e78ce7d25f1b4cf8cd33c"

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
