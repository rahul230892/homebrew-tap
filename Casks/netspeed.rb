cask "netspeed" do
  version "1.1.0"
  sha256 "ca12987bcda666c09ff4f6982eaf4748d866701acbfc13e29c1871bced53a049"

  url "https://github.com/rahul230892/macSpeed/releases/download/v#{version}/NetSpeed.zip"
  name "NetSpeed"
  desc "macOS Network Speed Monitor"
  homepage "https://github.com/rahul230892/macSpeed"

  app "NetSpeed.app"

  uninstall quit: "com.netspeed.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/NetSpeed.app"],
                   sudo: false
  end

  caveats <<~EOS
    If you get a "damaged" or "cannot be opened" error, run:
      xattr -cr /Applications/NetSpeed.app
  EOS
end
