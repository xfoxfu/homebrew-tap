cask "navigraph-charts" do
  version "8.31.0"
  sha256 "4d093338db87818dee8a4995dae8b72e76982878e313ab4d281336b2d6759afe"

  url "https://download.navigraph.com/software/charts/mac/Navigraph%20Charts%20#{version}.dmg"
  # verified: "dl.arctime.pro/"
  name "navigraph-charts"
  desc "Navigraph Charts"
  homepage "https://navigraph.com/"

  livecheck do
    url "https://download.navigraph.com/software/charts/mac/latest-mac.yml"
    strategy :yaml do |yaml|
      yaml["version"]
    end
  end  

  auto_updates true

  app "Navigraph Charts.app"

  depends_on macos: ">= :high_sierra"

  zap trash: [
    "~/Library/Application Support/Navigraph Charts",
    "~/Library/Caches/com.navigraph.charts.desktop",
    "~/Library/Caches/com.navigraph.charts.desktop.ShipIt",
    "~/Library/HTTPStorages/com.navigraph.charts.desktop",
    "~/Library/Logs/Navigraph Charts",
    "~/Library/Preferences/ByHost/com.navigraph.charts.desktop.ShipIt.*.plist",
    "~/Library/Preferences/com.navigraph.charts.desktop.plist",
    "~/Library/Saved Application State/com.navigraph.charts.desktop.savedState",
  ]
end
