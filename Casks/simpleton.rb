cask "simpleton" do
  arch arm: "arm64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "b50a5ec00f8397c1e843c2e73e17d079d8b532bec4a448cebb82de3a86df04a5",
         intel: "5e5935df600db97289b153add67fab8217702e8f7dbd61ec58fbbb30a4724381"

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
