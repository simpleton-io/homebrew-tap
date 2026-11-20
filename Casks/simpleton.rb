cask "simpleton" do
  arch arm: "arm64", intel: "x64"

  version "0.9.1"
  sha256 arm:   "25501a9a4fd0dcc15cccd310787011f4144b8193833a3d1ac332df87802aa979",
         intel: "0c8424ea35490845e6897bbcaa1eb93b00b2432c3a8f47cbfbb22451e55c58c7"

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
