class Noverlink < Formula
  desc "Local-to-global tunneling CLI - expose your localhost to the web"
  homepage "https://github.com/noverwork/noverlink"
  version "0.0.0-11e3c3d"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-darwin-arm64.tar.gz"
      sha256 "76015952439ff8cf9d3578126eebc725da6b8c2317d560e21921cc01cfdfbff1"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-darwin-x64.tar.gz"
      sha256 "0d703fe09fc5237846eb945f4104fc0bf08ff951fc677693f93606f910bda4e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-linux-arm64.tar.gz"
      sha256 "3cc742e26db8a3d4d23fb7ab709d667dde59ab3b414e0e506c897bbadf3e4e38"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-linux-x64.tar.gz"
      sha256 "bf225491ab67a005aa27e374fd9eb9b749be369c8e712d8ebd466a84202d2404"
    end
  end

  def install
    bin.install "noverlink"
  end

  test do
    assert_match "noverlink", shell_output("#{bin}/noverlink --version")
  end
end
