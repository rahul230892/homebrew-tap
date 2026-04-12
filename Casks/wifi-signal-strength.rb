cask "wifi-signal-strength" do
  version "1.0.0"
  sha256 "c529f4fff5b0adc60aa5ca20d17ca792bb910500f2d9f563cdf2cd4407c36191"

  url "https://github.com/rahul230892/wifiSignalStrength/releases/download/v#{version}/WiFiSignalStrength.zip"
  name "WiFi Signal Strength"
  desc "WiFi signal strength monitor for macOS"
  homepage "https://github.com/rahul230892/wifiSignalStrength"

  app "WiFiSignalStrength.app"
end
