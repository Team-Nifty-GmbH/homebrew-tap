# Template for Team-Nifty-GmbH/homebrew-tap Casks/pickundpack.rb. Lives in
# the app repo as homebrew/pickundpack.rb; release.yml (publish-direct)
# fills version and sha256 and commits it to the tap. Change anything else
# here, never in the tap.
cask "pickundpack" do
  version "1.17.1"
  sha256 "5c3e382b58ad2749d9af5dc060dc9b98f77f9f50baaf79dbe1c07f5fd269c1fa"

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
