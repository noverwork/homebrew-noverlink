class Noverlink < Formula
  desc "Local-to-global tunneling CLI - expose your localhost to the web"
  homepage "https://github.com/noverwork/noverlink"
  version "0.0.0-e6cf1e7"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-darwin-arm64.tar.gz"
      sha256 "016521ae81a7fb7bf2a5b5528d2ae4e16d70a2fac55567e2e736ef6732cdeeca"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-darwin-x64.tar.gz"
      sha256 "c2d8b2dabbb3b58b23beeb4b91923f779bb62e35065c300b0792136028adaef4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-linux-arm64.tar.gz"
      sha256 "8d72e23839d2a66b490730929ef9d18949ff5f893b5c9495aba6fefc627bbf59"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-linux-x64.tar.gz"
      sha256 "3bf1026f3b6858a2fb63abca3c4ae1ed6f1c88a59bfb578d4a112a659a9dc6b3"
    end
  end

  def install
    bin.install "noverlink"
  end

  test do
    assert_match "noverlink", shell_output("#{bin}/noverlink --version")
  end
end
