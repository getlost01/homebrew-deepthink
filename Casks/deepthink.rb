cask "deepthink" do
  version "1.0.0"
  sha256 "a29f1c85d32bae0feef0bad10fe71a14a14284dc6967da81d08be143c90d8816"

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
