cask "simpleton" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "dac72aab6430516725e2b88ed117c571ac230709c1a9413a5b456aee133255b1",
         intel: "57e6a8a72e315924763062b390475316613b4ef442240e5d65a8ded9ac9ff147"

  url "https://github.com/simpleton-io/simpleton/releases/download/v#{version}/Simpleton-#{version}-#{arch}.zip"
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
