class Noverlink < Formula
  desc "Local-to-global tunneling CLI - expose your localhost to the web"
  homepage "https://github.com/noverwork/noverlink"
  version "v1.1.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.1.1/noverlink-darwin-arm64.tar.gz"
      sha256 "456a744f76b792f82ab9c90e4188b1737e309efb2dc0396110372ff42b188d33"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.1.1/noverlink-darwin-x64.tar.gz"
      sha256 "3767570156f627fd51ef453e7ff91f2f9d311c68dc518d3aab85bdab3c9b9b6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.1.1/noverlink-linux-arm64.tar.gz"
      sha256 "7855afd422f647029e58b5f6c2624245a9ccc7a363871156358c8982ddc2e1d0"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.1.1/noverlink-linux-x64.tar.gz"
      sha256 "c0a75106aebadeeabf6d36549cd77338834900cd2de45b4e6be8648e2024d1e5"
    end
  end

  def install
    bin.install "noverlink"
  end

  test do
    assert_match "noverlink", shell_output("#{bin}/noverlink --version")
  end
end
