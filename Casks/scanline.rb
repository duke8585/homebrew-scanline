cask "scanline" do
  version "0.4.2"
  sha256 "e8e8f93ddfcb645673cdf00f1d0bff95ea090d0848685b76f533a492bc3591b6"

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
