cask "arctime-pro" do
  version "4.3"
  sha256 "af03d9e29724346cba65f1bded6d9ef434b9d779bc5c49daa4cf7fe6a5c303c8"

  url "https://dl.arctime.pro/ARCTIME_PRO_#{version}_MAC_SIGN.zip",
      verified: "dl.arctime.pro/"
  name "arctime-pro"
  desc "Cross platform subtitle tool"
  homepage "https://arctime.cn/"

  livecheck do
    url "https://t.arctime.cn/ap2m"
    strategy :header_match
  end

  auto_updates true

  app "ARCTIME_PRO_#{version}_MAC/ArcTime Pro.app"
end
