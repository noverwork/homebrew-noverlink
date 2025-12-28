class Noverlink < Formula
  desc "Local-to-global tunneling CLI - expose your localhost to the web"
  homepage "https://github.com/noverwork/noverlink"
  version "v1.1.3"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.1.3/noverlink-darwin-arm64.tar.gz"
      sha256 "85c80a73f3a9e2c2f445aa5e5b1afc2643e82e72d74b21ae941b1f9e25b45088"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.1.3/noverlink-darwin-x64.tar.gz"
      sha256 "5e493939a80a0d9b741aa7ff4bdcf486d0786f6e35c2521764ed5e34b1065c3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.1.3/noverlink-linux-arm64.tar.gz"
      sha256 "00878a763166fba0f49789977e503f1143044b4420173ff1f43555d544960e01"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.1.3/noverlink-linux-x64.tar.gz"
      sha256 "90b0c326d3af222fdd4540322e180a9ee4bbf710e4cdbb441b1fa8b2a0282237"
    end
  end

  def install
    bin.install "noverlink"
  end

  test do
    assert_match "noverlink", shell_output("#{bin}/noverlink --version")
  end
end
