# Template for Team-Nifty-GmbH/homebrew-tap Casks/pickundpack.rb. Lives in
# the app repo as homebrew/pickundpack.rb; release.yml (publish-direct)
# fills version and sha256 and commits it to the tap. Change anything else
# here, never in the tap.
cask "pickundpack" do
  version "1.11.0"
  sha256 "3655f1033cb013f4224e66e4e2b7a2bb20c99e246c4e677636044c7415f179c9"

  url "https://apt.team-nifty.com/downloads/pickundpack/pickundpack-#{version}-macos.zip"
  name "Pick & Pack"
  desc "Pick, pack and receive warehouse orders in nuxbe"
  homepage "https://nuxbe.com"

  livecheck do
    skip "Updated by the release workflow"
  end

  depends_on macos: ">= :catalina"

  app "pickundpack.app"

  zap trash: [
    "~/Library/Application Support/com.team-nifty.pickundpack",
    "~/Library/Caches/com.team-nifty.pickundpack",
    "~/Library/Preferences/com.team-nifty.pickundpack.plist",
  ]
end
