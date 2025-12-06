class Noverlink < Formula
  desc "Local-to-global tunneling CLI - expose localhost to the internet"
  homepage "https://github.com/noverwork/noverlink"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.0.0/noverlink-darwin-arm64.tar.gz"
      sha256 "30369ca9c3f02ce91298bfc608777f52011527b793a2d416f1d6e39e5dcca472"
    end
    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.0.0/noverlink-darwin-x64.tar.gz"
      sha256 "d3064ae3536feb5483d9c9d4354e72bba5949726dac6ab1b730791fcdafef454"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.0.0/noverlink-linux-arm64.tar.gz"
      sha256 "a8fea9f0c5dc4999859e83949d3d54256864478428199fa0f98b80110708c6d1"
    end
    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.0.0/noverlink-linux-x64.tar.gz"
      sha256 "e8bef358ac8729c122c9ec11388e77b38150bf71a857bcb8b4b4f49bc13eefb5"
    end
  end

  def install
    bin.install "noverlink"
  end

  test do
    assert_match "noverlink", shell_output("#{bin}/noverlink --version")
  end
end
