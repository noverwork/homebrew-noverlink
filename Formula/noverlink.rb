class Noverlink < Formula
  desc "Local-to-global tunneling CLI - expose your localhost to the web"
  homepage "https://github.com/noverwork/noverlink"
  version "v1.1.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.1.0/noverlink-darwin-arm64.tar.gz"
      sha256 "587cfd7255c6583c9abfbeecd349ecaf9df20962f572278478f61e4bb1d56d71"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.1.0/noverlink-darwin-x64.tar.gz"
      sha256 "50dbe23798774a8a9ff6d9056703633eec8c8ff45dae49f4208bf1eb0fa88994"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.1.0/noverlink-linux-arm64.tar.gz"
      sha256 "3d34c25915aa258e418a638f5c0919e9af7ef1d273e135d96f86d44923c2f310"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.1.0/noverlink-linux-x64.tar.gz"
      sha256 "5de11182bd865272da8770b1d05d2c7804aa495b55b3d09d803fb0e0130a7bc8"
    end
  end

  def install
    bin.install "noverlink"
  end

  test do
    assert_match "noverlink", shell_output("#{bin}/noverlink --version")
  end
end
