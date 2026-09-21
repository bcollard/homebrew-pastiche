cask "pastiche" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/bcollard/pastiche/releases/download/v#{version}/Pastiche-#{version}.zip"
  name "Pastiche"
  desc "Open-source, keyboard-first clipboard manager"
  homepage "https://pastiche.runlocal.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Pastiche.app"

  zap trash: [
    "~/Library/Application Support/Pastiche",
    "~/Library/Preferences/io.github.bcollard.Pastiche.plist",
  ]

  caveats <<~EOS
    Pastiche pastes for you by pressing ⌘V in the app you came from. That needs the
    Accessibility permission (System Settings → Privacy & Security). Without it,
    Pastiche still copies the selected item to your clipboard.
  EOS
end
