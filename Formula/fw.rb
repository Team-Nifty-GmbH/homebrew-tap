# Template for Team-Nifty-GmbH/homebrew-tap Formula/fw.rb. The release
# workflow (publish-direct) fills the @...@ placeholders and commits
# it to the tap. Change anything else here, never in the tap.
class Fw < Formula
  desc "Connect to machines running team nifty Fernwartung"
  homepage "https://team-nifty.com"
  version "0.1.0"

  base = "https://apt.team-nifty.com/downloads/fw/fw-0.1.0"
  on_macos do
    on_arm do
      url "#{base}-darwin-arm64.tar.gz"
      sha256 "a05f52347250fd1c7853450768d3edc964e6ea0dc448a5abe84ce1f2c48a2d3e"
    end
    on_intel do
      url "#{base}-darwin-amd64.tar.gz"
      sha256 "d4832c0117a7b1c0e4c7805272bb277236ceb1741e453a702cda2e8c8c138129"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-linux-arm64.tar.gz"
      sha256 "57c6de34141bf58ea4b5f7a74352a6d7b15e48a944633d1daedf381df7dffed1"
    end
    on_intel do
      url "#{base}-linux-amd64.tar.gz"
      sha256 "912752f8038fa7f8625512fc9ed9397f7a326fedfdf878bb7265f8c25994de1c"
    end
  end

  def install
    bin.install "fw"
  end

  test do
    assert_match "support tool", shell_output("#{bin}/fw --help 2>&1")
  end
end
