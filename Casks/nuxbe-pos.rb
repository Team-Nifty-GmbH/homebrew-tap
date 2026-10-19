# Template for Team-Nifty-GmbH/homebrew-tap Casks/nuxbe-pos.rb.
# mobile-release.yml (publish-direct) fills version and sha256 and commits it
# to the tap. Change anything else here, never in the tap.
cask "nuxbe-pos" do
  version "1.2.0"
  sha256 "7ae7931529b7324ac748c713b9875a18902b03cf42ee0a86e5e7071ed5d6086c"

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
