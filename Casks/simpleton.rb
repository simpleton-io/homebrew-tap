cask "simpleton" do
  arch arm: "arm64", intel: "x64"

  version "0.2.2"
  sha256 arm:   "c6b59d7002a9edeba24710eff8d81e4e4b37619267011d68bc9aa0cba4b6a967",
         intel: "63b18e0e8b28795186f7a78a56efcf23894e6a4cd29771bc755adf1c0d7b302b"

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
