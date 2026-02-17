cask "scanline" do
  version "0.4.0"
  sha256 "48392d8788e7b2c0b957c772b46d8e411834531cf8f5a4a1192b2f4971c127b3"

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
