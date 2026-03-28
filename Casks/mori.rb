cask "mori" do
  version "0.1.3"
  sha256 "3366ae88d3a6b98a739a62f6a74ec27837d8dd1c9d5638646f8c629529acdc8d"

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
    "~/Library/Saved Application State/dev.mori.app.savedState",
  ]
end
