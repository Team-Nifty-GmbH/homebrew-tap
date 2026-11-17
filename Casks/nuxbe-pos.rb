# Template for Team-Nifty-GmbH/homebrew-tap Casks/nuxbe-pos.rb.
# mobile-release.yml (publish-direct) fills version and sha256 and commits it
# to the tap. Change anything else here, never in the tap.
cask "nuxbe-pos" do
  version "1.7.1"
  sha256 "0d141eda8f7c997643a79fff9b990bfe6c9e7d0de63e321b87074634e3d2cde3"

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
