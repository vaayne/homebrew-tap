cask "mori" do
  version "0.4.0"
  sha256 "e1bf91b3c4f4d8c5b9a55173ea652a7155131c7219b4d0f6d7ca602d4387dd61"

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
