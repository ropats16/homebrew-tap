cask "cado" do
  version "0.2.0"
  sha256 "c3295c22b76e6128ce23e8dea744dd95c453de4e96ea004d5cb91b65aa2252e4"

  url "https://github.com/ropats16/cado/releases/download/v#{version}/Cado-#{version}.dmg"
  name "Cado"
  desc "Local, on-device speech-to-text dictation"
  homepage "https://github.com/ropats16/cado"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Sparkle updates the app in place (#24), so `brew upgrade` leaves it alone.
  auto_updates true
  depends_on macos: :sonoma

  app "Cado.app"

  zap trash: [
    "~/Library/Application Support/Cado",
    "~/Library/Application Support/VoiceType",
    "~/Library/Caches/com.ropats16.Cado",
    "~/Library/Preferences/com.ropats16.Cado.plist",
    "~/Library/Saved Application State/com.ropats16.Cado.savedState",
  ]
end
