# Team Nifty Homebrew tap

macOS apps by Team Nifty GmbH, notarized with our Developer ID.

```sh
brew tap team-nifty-gmbh/tap
brew install --cask <app>
```

| Cask | App |
|---|---|
| `mega-meal` | Mega Meal, canteen meal ordering and canteen account |
| `nuxfon` | nuxfon, SIP softphone for your existing phone system |

The casks are written by each app's release workflow: on a version tag it
uploads the notarized zip to `https://apt.team-nifty.com/downloads/<app>/`
and commits the new `version` and `sha256` here. Do not edit a cask by hand
for a version bump; fix the template in the app's repository instead.
