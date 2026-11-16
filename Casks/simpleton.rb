cask "simpleton" do
  arch arm: "arm64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "57730636ea77df6af1a251f9fdb412056f8d9a37ae5e9d8784fcf5375ae377b4",
         intel: "2d688942ffaccf82afaf311ad9b9b9386e93a709e1de41cc6652537d94c5ac57"

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
