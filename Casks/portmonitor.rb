cask "portmonitor" do
  version "1.1.0"
  sha256 "4806ac191548f02bf388d83f6a844e88556417975fdffb2583e8d454e396c67f"

  url "https://github.com/rahul230892/PortMonitor/releases/download/v#{version}/PortMonitor.zip"
  name "PortMonitor"
  desc "macOS Port Monitor"
  homepage "https://github.com/rahul230892/PortMonitor"

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
