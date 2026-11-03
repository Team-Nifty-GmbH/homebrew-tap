# Template for Team-Nifty-GmbH/homebrew-tap Casks/nuxhelp-app.rb. The
# release workflow (publish-direct) fills version and sha256 and commits it
# to the tap. Change anything else here, never in the tap.
cask "nuxhelp-app" do
  version "0.3.0"
  sha256 "78f70d18e1d0515d7373d7d5770591ca4f5bcc170129bc749da60a173065de94"

  url "https://apt.team-nifty.com/downloads/nuxhelp/nuxhelp-#{version}-macos.dmg"
  name "nuxhelp"
  desc "Remote support over SSH"
  homepage "https://team-nifty.com"

  livecheck do
    skip "Updated by the release workflow"
  end

  depends_on macos: ">= :monterey"

  app "nuxhelp.app"

  # Managed mode only. Not under uninstall: brew upgrade runs that and would
  # switch off a managed Mac on every update.
  zap launchctl: "com.teamnifty.nuxhelp",
      delete:    [
        "/Library/Application Support/nuxhelp",
        "/Library/LaunchDaemons/com.teamnifty.nuxhelp.plist",
      ],
      trash:     [
        "~/Library/Application Support/com.teamnifty.nuxhelp",
        "~/Library/Caches/com.teamnifty.nuxhelp",
        "~/Library/Preferences/com.teamnifty.nuxhelp.plist",
      ]
end
