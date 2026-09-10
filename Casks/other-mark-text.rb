cask "other-mark-text" do
  arch arm: "arm64", intel: "x64"

  version "0.17.1"
  sha256 :no_check

  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{arch}.dmg"
  name "MarkText"
  desc "Markdown editor"
  homepage "https://github.com/marktext/marktext"

  livecheck do
    url :url
    strategy :github_latest
  end

#   disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true

  app "MarkText.app"

  zap trash: [
    "~/Library/Application Support/marktext",
    "~/Library/Logs/marktext",
    "~/Library/Preferences/com.github.marktext.marktext.plist",
    "~/Library/Saved Application State/com.github.marktext.marktext.savedState",
  ]
end