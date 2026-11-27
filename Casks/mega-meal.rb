# Template for Team-Nifty-GmbH/homebrew-tap Casks/mega-meal.rb. The release
# workflow (publish-direct) fills version and sha256 and commits it to the
# tap. Change anything else here, never in the tap.
cask "mega-meal" do
  version "1.18.9"
  sha256 "ef2cb436eb03d5fe3e9cb53255cc02477fb23a10f1e729792d9fe2fa564ef2a9"

  url "https://apt.team-nifty.com/downloads/mega-meal/mega-meal-#{version}-macos.zip"
  name "Mega Meal"
  desc "Order canteen meals and manage your canteen account"
  homepage "https://mega-meal.de"

  livecheck do
    skip "Updated by the release workflow"
  end

  depends_on macos: ">= :monterey"

  app "Mega Meal.app"

  zap trash: [
    "~/Library/Application Support/com.team-nifty.megaMeal",
    "~/Library/Caches/com.team-nifty.megaMeal",
    "~/Library/Containers/com.team-nifty.megaMeal",
    "~/Library/Preferences/com.team-nifty.megaMeal.plist",
  ]
end
