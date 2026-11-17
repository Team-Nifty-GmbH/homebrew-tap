# Template for Team-Nifty-GmbH/homebrew-tap Casks/nuxbe-pos.rb.
# mobile-release.yml (publish-direct) fills version and sha256 and commits it
# to the tap. Change anything else here, never in the tap.
cask "nuxbe-pos" do
  version "1.8.0"
  sha256 "e864fcb550af720b5c8538041493cd7f5c22f726a585b5ea969717980347abbb"

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
