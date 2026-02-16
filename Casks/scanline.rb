cask "scanline" do
  version "0.3.1"
  sha256 "2c8fbd0194f13a5636576d43d7de4efec583e1de1fcbbdc5e06b7c007938e166"

  url "https://github.com/duke8585/scanline-macos/releases/download/v#{version}/CalendarOverlay-#{version}.zip"
  name "Scanline"
  desc "CRT-style full-screen calendar overlays for macOS"
  homepage "https://github.com/duke8585/scanline-macos"

  depends_on macos: ">= :sonoma"

  app "CalendarOverlay.app"
end
