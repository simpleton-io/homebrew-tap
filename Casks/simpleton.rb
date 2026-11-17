cask "simpleton" do
  arch arm: "arm64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "b12f61655530698f3c5d24b03330b82fc77902a2cf7463906d85c3c41afbf23f",
         intel: "ec71a0658d9a29ab069e1f0b8c4406640394b11cdd118a2bc26789a206d12ab4"

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
