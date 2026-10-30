# Template for Team-Nifty-GmbH/homebrew-tap Casks/tn-fernwartung.rb. The
# release workflow (publish-direct) fills version and sha256 and commits it
# to the tap. Change anything else here, never in the tap.
cask "tn-fernwartung" do
  version "0.1.0"
  sha256 "6e5ecdacd544234d53bb39bf27ea76f62fc5dfa8d580e022095beb4b08252c09"

  url "https://apt.team-nifty.com/downloads/tn-fernwartung/tn-fernwartung-#{version}-macos.dmg"
  name "team nifty Fernwartung"
  desc "Remote maintenance over SSH by team nifty"
  homepage "https://team-nifty.com"

  livecheck do
    skip "Updated by the release workflow"
  end

  depends_on macos: ">= :monterey"

  app "team nifty Fernwartung.app"

  # Managed mode only. Not under uninstall: brew upgrade runs that and would
  # switch off a managed Mac on every update.
  zap launchctl: "com.teamnifty.fernwartung",
      delete:    [
        "/Library/Application Support/tn-fernwartung",
        "/Library/LaunchDaemons/com.teamnifty.fernwartung.plist",
      ],
      trash:     [
        "~/Library/Application Support/com.teamnifty.fernwartung",
        "~/Library/Caches/com.teamnifty.fernwartung",
        "~/Library/Preferences/com.teamnifty.fernwartung.plist",
      ]
end
