cask "mori" do
  version "0.3.7"
  sha256 "654c31d43e0a24c9a63577a7c9b03b07c5764bc30e4ee4b2f94b69833e2fb024"

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
