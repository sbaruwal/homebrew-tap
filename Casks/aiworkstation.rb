# Homebrew cask for AIWorkstation — https://github.com/sbaruwal/AIWorkstation
#
#   brew install --cask sbaruwal/tap/aiworkstation
#
# Per release: bump `version` and `sha256` to match the notarized DMG
# (`shasum -a 256 build/AIWorkstation-<version>.dmg`), then commit here.
cask "aiworkstation" do
  version "0.1.0"
  sha256 "0ba4c472d6ce16d16041756de968f2dc2691c06bc61cb744bbf7b3d0ec74f89a"

  url "https://github.com/sbaruwal/AIWorkstation/releases/download/v#{version}/AIWorkstation-#{version}.dmg"
  name "AIWorkstation"
  desc "Native macOS canvas for running multiple AI coding agents side by side"
  homepage "https://github.com/sbaruwal/AIWorkstation"

  depends_on macos: :sequoia # macOS 15+ (bare symbol = minimum version)

  app "AIWorkstation.app"

  zap trash: [
    "~/Library/Application Support/AIWorkstation",
    "~/Library/Preferences/com.aiworkstation.app.plist",
  ]
end
