# Homebrew cask for Orbvane — https://github.com/sbaruwal/orbvane
#
#   brew install --cask sbaruwal/tap/orbvane
#
# Per release: bump `version` and `sha256` to match the notarized DMG
# (`shasum -a 256 Orbvane-<version>.dmg`, or the digest on the release page), then commit here.
cask "orbvane" do
  version "0.3.3"
  sha256 "3818b859b1d36bf710b97862c54b3afae966bbb933144e01a6a7615fbe535f6a"

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
