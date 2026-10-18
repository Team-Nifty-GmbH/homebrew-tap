# Template for Team-Nifty-GmbH/homebrew-tap Casks/nuxbe-pos.rb.
# mobile-release.yml (publish-direct) fills version and sha256 and commits it
# to the tap. Change anything else here, never in the tap.
cask "nuxbe-pos" do
  version "1.1.1"
  sha256 "fbacd7600684c661e41d129bab65555ad1ee95bb110ea3a14d7557c63625d85d"

  url "https://apt.team-nifty.com/downloads/nuxbe-pos/nuxbe-pos-#{version}-macos.zip"
  name "Nuxbe PoS"
  desc "Point of sale till for nuxbe"
  homepage "https://nuxbe.com"

  livecheck do
    skip "Updated by the release workflow"
  end

  depends_on macos: ">= :catalina"

  app "Nuxbe PoS.app"

  zap trash: [
    "~/Library/Containers/com.team-nifty.nuxbePos",
    "~/Library/Application Support/com.team-nifty.nuxbePos",
    "~/Library/Caches/com.team-nifty.nuxbePos",
    "~/Library/Preferences/com.team-nifty.nuxbePos.plist",
  ]
end
