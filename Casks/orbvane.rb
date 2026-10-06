# Homebrew cask for Orbvane — https://github.com/sbaruwal/orbvane
#
#   brew install --cask sbaruwal/tap/orbvane
#
# Per release: bump `version` and `sha256` to match the notarized DMG
# (`shasum -a 256 Orbvane-<version>.dmg`, or the digest on the release page), then commit here.
cask "orbvane" do
  version "0.3.2"
  sha256 "42f89049ef88b5cd6e5c034dd6d1dfe4fa10ca4ebe760a128dc57352df70de63"

  url "https://github.com/sbaruwal/orbvane/releases/download/v#{version}/Orbvane-#{version}.dmg"
  name "Orbvane"
  desc "Native code editor written in Rust"
  homepage "https://github.com/sbaruwal/orbvane"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma # macOS 14+ (bare symbol = minimum version)

  app "Orbvane.app"

  zap trash: [
    "~/Library/Application Support/Orbvane",
    "~/Library/Preferences/dev.orbvane.ide.plist",
    "~/Library/Saved Application State/dev.orbvane.ide.savedState",
  ]
end
