class Noverlink < Formula
  desc "Local-to-global tunneling CLI - expose your localhost to the web"
  homepage "https://github.com/noverwork/noverlink"
  version "v1.0.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.0.1/noverlink-darwin-arm64.tar.gz"
      sha256 "25cb7d8e2f362058c0aa000fa032b2871aa7855566479fe1e8bb55d26092c3d4"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.0.1/noverlink-darwin-x64.tar.gz"
      sha256 "81ac33294f9d1dcc6f62af5a1616a6bac1c75eb02fa3a810c73f0563ce7bd618"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.0.1/noverlink-linux-arm64.tar.gz"
      sha256 "df6ce33f9fde75dfca9382d90249888f1e36c20bedcb90ede01232f7fc7a7670"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.0.1/noverlink-linux-x64.tar.gz"
      sha256 "288e41c6b7d1d3d0665b8d8d3ca130f9fb436fbab9bba9285316da2720778014"
    end
  end

  def install
    bin.install "noverlink"
  end

  test do
    assert_match "noverlink", shell_output("#{bin}/noverlink --version")
  end
end
