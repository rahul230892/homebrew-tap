cask "netspeed" do
  version "1.0.0"
  sha256 "146213711cde7d3d8aa5f6799f7c283713e22b0a7ff278d473f577eb5fa5073a"

  url "https://github.com/rahul230892/macSpeed/releases/download/v#{version}/NetSpeed.zip"
  name "NetSpeed"
  desc "macOS Network Speed Monitor"
  homepage "https://github.com/rahul230892/macSpeed"

  app "NetSpeed.app"

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
