class Noverlink < Formula
  desc "Local-to-global tunneling CLI - expose your localhost to the web"
  homepage "https://github.com/noverwork/noverlink"
  version "v1.2.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.2.1/noverlink-darwin-arm64.tar.gz"
      sha256 "d23a9a1ed9579c900d28a3d83a508e509825d2d0ccdea204eddb2351c1fa3b93"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.2.1/noverlink-darwin-x64.tar.gz"
      sha256 "0fdf7cec4d2650c1bd56bd129a948b7b9f6a42cd76dbfbcb00091eab9108340a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.2.1/noverlink-linux-arm64.tar.gz"
      sha256 "024543cb6764359cc036cae9c27c6f00506c1b505fb688943922f7613a1aab55"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.2.1/noverlink-linux-x64.tar.gz"
      sha256 "8ee9f2d1b2db73680befa787439d93b420661bdece39065df787454aefcd6aca"
    end
  end

  def install
    bin.install "noverlink"
  end

  test do
    assert_match "noverlink", shell_output("#{bin}/noverlink --version")
  end
end
