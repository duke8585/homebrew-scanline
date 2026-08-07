cask "scanline" do
  version "0.6.1"
  sha256 "116c287551bc463bf407c94c0cff8c74a942ed454058fc4021261bac63614040"

  url "https://github.com/duke8585/scanline-macos/releases/download/v#{version}/Scanline-#{version}.zip"
  name "Scanline"
  desc "CRT-style full-screen calendar overlays for macOS"
  homepage "https://github.com/duke8585/scanline-macos"

  depends_on macos: :sonoma

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
