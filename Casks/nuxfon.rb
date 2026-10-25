# Template for Team-Nifty-GmbH/homebrew-tap Casks/nuxfon.rb. The release
# workflow (publish-direct) fills version and sha256 and commits it to the
# tap. Change anything else here, never in the tap.
cask "nuxfon" do
  version "1.0.9"
  sha256 "532925da7ff56d7dddf89dfd37be1679a440883f5f5f10d9102ecace7cc24c2a"

  url "https://apt.team-nifty.com/downloads/nuxfon/nuxfon-#{version}-macos.zip"
  name "nuxfon"
  desc "SIP softphone for your existing phone system"
  homepage "https://nuxfon.nuxbe.com"

  livecheck do
    skip "Updated by the release workflow"
  end

  depends_on macos: ">= :monterey"

  app "nuxfon.app"

  zap trash: [
    "~/Library/Application Support/com.team-nifty.nuxfon",
    "~/Library/Caches/com.team-nifty.nuxfon",
    "~/Library/Preferences/com.team-nifty.nuxfon.plist",
  ]
end
