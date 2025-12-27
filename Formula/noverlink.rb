class Noverlink < Formula
  desc "Local-to-global tunneling CLI - expose your localhost to the web"
  homepage "https://github.com/noverwork/noverlink"
  version "v1.0.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.0.0/noverlink-darwin-arm64.tar.gz"
      sha256 "10c8e2e98f3fbeef3ee26d313bc35ccfc9b05f6df4f48610a3339c30135c0086"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.0.0/noverlink-darwin-x64.tar.gz"
      sha256 "905122a986f304a3707176fc3ae665fc8f5079748f472e5822118ec23982833a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.0.0/noverlink-linux-arm64.tar.gz"
      sha256 "b813cfeb42b236c72763c2fd3eb781e3ea88fe8cdf17aa71c14b36341a8e1d1a"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.0.0/noverlink-linux-x64.tar.gz"
      sha256 "12776bce974f04bf91e94df7123b62f1151644fa097f2c26302690a53e7d0325"
    end
  end

  def install
    bin.install "noverlink"
  end

  test do
    assert_match "noverlink", shell_output("#{bin}/noverlink --version")
  end
end
