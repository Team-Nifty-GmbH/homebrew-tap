# Template for Team-Nifty-GmbH/homebrew-tap Formula/fw.rb. The release
# workflow (publish-direct) fills the @...@ placeholders and commits
# it to the tap. Change anything else here, never in the tap.
class Fw < Formula
  desc "Connect to machines running team nifty Fernwartung"
  homepage "https://team-nifty.com"
  version "0.2.0"

  base = "https://apt.team-nifty.com/downloads/fw/fw-0.2.0"
  on_macos do
    on_arm do
      url "#{base}-darwin-arm64.tar.gz"
      sha256 "0190f0d1fab762177572cb34f20240e0d3c2823ac57338cd70a45f9a30920a32"
    end
    on_intel do
      url "#{base}-darwin-amd64.tar.gz"
      sha256 "5b8015760d629de34359a85b905ae065c8d6a7a8cabdf5b84adad923aed794ba"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-linux-arm64.tar.gz"
      sha256 "51693a86311c5d6c25c01398844b43dc82a94bd96d6479fb2f66bca8c697fa91"
    end
    on_intel do
      url "#{base}-linux-amd64.tar.gz"
      sha256 "57a5c6c07527df8bdc9b3fd392d0ec39ad6145560c8fd5856c7566b3ee2e433d"
    end
  end

  def install
    bin.install "fw"
  end

  test do
    assert_match "support tool", shell_output("#{bin}/fw --help 2>&1")
  end
end
