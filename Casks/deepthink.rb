cask "deepthink" do
  version "1.0.0"
  sha256 "717b354d0540f421460816ca6328acb549a1ea0c127dad250843cbfd1bc426e5"

  url "https://github.com/getlost01/deepthink/releases/download/v#{version}/DeepThink-#{version}.zip"
  name "DeepThink"
  desc "AI-powered thinking and knowledge workspace"
  homepage "https://github.com/getlost01/deepthink"

  depends_on :macos

  app "DeepThink.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/DeepThink.app"]
  end

  zap trash: [
    "~/Library/Application Support/DeepThink",
    "~/Library/Caches/com.deepthink.app",
    "~/Library/Preferences/com.deepthink.app.plist",
    "~/Library/Saved Application State/com.deepthink.app.savedState",
  ]
end
