# Template for Team-Nifty-GmbH/homebrew-tap Casks/nuxfon.rb. The release
# workflow (publish-direct) fills version and sha256 and commits it to the
# tap. Change anything else here, never in the tap.
cask "nuxfon" do
  version "1.1.7"
  sha256 "adfc6cf23ae9794ae8341be1c93d60b74fbee817fd4fff60da56b67b05ecdf54"

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
