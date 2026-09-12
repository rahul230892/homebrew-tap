cask "netspeed" do
  version "1.2.0"
  sha256 "2ff94078ea9aafc9417de1cabe0cab8a541fc6ed584e460c013797aa5badf67b"

  url "https://github.com/rahul230892/macSpeed/releases/download/v#{version}/NetSpeed.zip"
  name "NetSpeed"
  desc "Live network speed monitor for the menu bar"
  homepage "https://github.com/rahul230892/macSpeed"

  auto_updates true
  depends_on macos: :sonoma

  app "NetSpeed.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/NetSpeed.app"]
  end

  uninstall quit: "com.rahul.NetSpeed"

  zap trash: [
    "~/Library/Caches/com.rahul.NetSpeed",
    "~/Library/Preferences/com.rahul.NetSpeed.plist",
    "~/Library/Saved Application State/com.rahul.NetSpeed.savedState",
  ]
end
