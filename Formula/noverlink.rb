class Noverlink < Formula
  desc "Local-to-global tunneling CLI - expose your localhost to the web"
  homepage "https://github.com/noverwork/noverlink"
  version "9c09221"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-darwin-arm64.tar.gz"
      sha256 "585aa0b164d87eb962a67b16064893905f6a64cb1d6b68edd5326f17295f6494"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-darwin-x64.tar.gz"
      sha256 "61f2cb1d3c3aec2c2577fcf84d13f8fb960d515f1f8232bb5b5eb9e8d18f5a9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-linux-arm64.tar.gz"
      sha256 "61d1ceebb6c2a9c47d23cbf366920685aa1ef4b221177ee55da58e0b5ec04c71"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-linux-x64.tar.gz"
      sha256 "d07bd9c6fdbe5804c87a3b669ddc686b844b349a5739ab9e8c8f599cb66f4864"
    end
  end

  def install
    bin.install "noverlink"
  end

  test do
    assert_match "noverlink", shell_output("#{bin}/noverlink --version")
  end
end
