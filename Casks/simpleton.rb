cask "simpleton" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "4d172a753753ee4d7e1c7bdf3e98362af7d14467ca5590788217d7e38ba7d44e",
         intel: "e077cf259f7f2e047cf65b12bbe83f821ae2a223f02cd78da4535387c1108d31"

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
