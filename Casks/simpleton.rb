cask "simpleton" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "f1aefb490638bbc887ae05166e3e8369d1c7764ac48a389171ea10b147d889e1",
         intel: "28be650147bc05471ed5d4c31070846ce468ad475afe1f0d76eee1cf278c8af6"

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
