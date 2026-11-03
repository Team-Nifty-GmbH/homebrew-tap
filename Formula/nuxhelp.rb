# Template for Team-Nifty-GmbH/homebrew-tap Formula/nuxhelp.rb. The release
# workflow (publish-direct) fills the @...@ placeholders and commits
# it to the tap. Change anything else here, never in the tap.
class Nuxhelp < Formula
  desc "Connect to machines running the nuxhelp app"
  homepage "https://team-nifty.com"
  version "0.3.0"

  base = "https://apt.team-nifty.com/downloads/nuxhelp-cli/nuxhelp-cli-0.3.0"
  on_macos do
    on_arm do
      url "#{base}-darwin-arm64.tar.gz"
      sha256 "d550affa53076d6b8e1f088ce116ea4b1c28f33a3c02c9a79e0752d6ce7a0f8e"
    end
    on_intel do
      url "#{base}-darwin-amd64.tar.gz"
      sha256 "c9d66405b5c106f32c4f73c950c1db4b0a2f9b9b6966955fa64bd2f1b8736b30"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-linux-arm64.tar.gz"
      sha256 "3533fcdbc0d2c2f0843f3634b75b82a03663da1877896e1ef5b6e4df67b2295b"
    end
    on_intel do
      url "#{base}-linux-amd64.tar.gz"
      sha256 "9dbc43aed29f3c33cd22edc11bed30d03e745628a331756571694d21978eafa7"
    end
  end

  def install
    bin.install "nuxhelp"
  end

  test do
    assert_match "support tool", shell_output("#{bin}/nuxhelp --help 2>&1")
  end
end
