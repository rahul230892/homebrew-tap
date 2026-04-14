cask "portmonitor" do
  version "1.0.0"
  sha256 :no_check

  url "file:///Users/rahul/Documents/Applications/PortMonitor/PortMonitor.zip"
  name "PortMonitor"
  desc "macOS Port Monitor"
  homepage "https://localhost"

  app "PortMonitor.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/PortMonitor.app"],
                   sudo: false
  end

  caveats <<~EOS
    If you get a "damaged" or "cannot be opened" error, run:
      xattr -cr /Applications/PortMonitor.app
  EOS
end
