cask "scanline" do
  version "0.5.1"
  sha256 "5ad05b466844057d304f8669be5c60a740f7d7c7daf74d993bdfde9f4be8c9f5"

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
