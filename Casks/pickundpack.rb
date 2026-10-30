# Template for Team-Nifty-GmbH/homebrew-tap Casks/pickundpack.rb. Lives in
# the app repo as homebrew/pickundpack.rb; release.yml (publish-direct)
# fills version and sha256 and commits it to the tap. Change anything else
# here, never in the tap.
cask "pickundpack" do
  version "1.14.0"
  sha256 "34ac8fbaa86aeccf9ba7f08ccbe5a2f09f600b0cbdbf753a06349bad9e5d647b"

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
