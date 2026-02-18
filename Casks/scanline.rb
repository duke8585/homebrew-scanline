cask "scanline" do
  version "0.6.0"
  sha256 "963db8564b35bea5325a07f70d2daf1d67baaadc5a62bcc6d270452749fc28a9"

  url "https://github.com/duke8585/scanline-macos/releases/download/v#{version}/Scanline-#{version}.zip"
  name "Scanline"
  desc "CRT-style full-screen calendar overlays for macOS"
  homepage "https://github.com/duke8585/scanline-macos"

  depends_on macos: ">= :sonoma"

  app "Scanline.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Scanline.app"]
  end

  caveats <<~EOS
    #{token} is not signed with an Apple Developer ID.
    Quarantine attribute is removed automatically after install.
  EOS
end
