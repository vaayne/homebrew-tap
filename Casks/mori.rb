cask "mori" do
  version "0.3.6"
  sha256 "e4d55a31298cdaf4e00b73daeff9618749c6ac337f22ccbc94901b0ec8aa8ef8"

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
