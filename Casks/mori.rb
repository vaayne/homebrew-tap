cask "mori" do
  version "0.3.3"
  sha256 "c75cabd86bce9bac170477d83cdff83e18445522f6550e8fdb4e74d709134519"

  url "https://github.com/vaayne/mori/releases/download/v#{version}/Mori-#{version}-macos-arm64.zip"
  name "Mori"
  desc "Native macOS workspace terminal organized around projects and worktrees"
  homepage "https://github.com/vaayne/mori"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"
  depends_on formula: "tmux"

  app "Mori.app"
  binary "#{appdir}/Mori.app/Contents/MacOS/bin/mori", target: "mori"

  zap trash: [
    "~/Library/Application Support/Mori",
    "~/Library/Preferences/com.mori.app.plist",
    "~/Library/Preferences/dev.mori.app.plist",
    "~/Library/Preferences/dev.mori.shared.plist",
    "~/Library/Preferences/com.vaayne.mori.plist",
    "~/Library/Preferences/com.vaayne.mori.shared.plist",
    "~/Library/Saved Application State/dev.mori.app.savedState",
    "~/Library/Saved Application State/com.vaayne.mori.savedState",
  ]
end
