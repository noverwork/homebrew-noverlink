class Noverlink < Formula
  desc "Local-to-global tunneling CLI - expose your localhost to the web"
  homepage "https://github.com/noverwork/noverlink"
  version "0.0.0-64f6683"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-darwin-arm64.tar.gz"
      sha256 "51d9835b5eff87951f417de91637b902b27546f56ee87b3307c971d568d2a294"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-darwin-x64.tar.gz"
      sha256 "554f3c99794bc164d7446377d360b3470a5465b9659e046e765adcf990420207"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-linux-arm64.tar.gz"
      sha256 "d3be7ce4bb6c8423302dc1c5a5a2e92a151036708273f2d7b74968ad1ab783c4"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-linux-x64.tar.gz"
      sha256 "fa98ee21f1f860cd9234b50f8d16f1edc673bedbac4a43b9e9eca4e58ee48aca"
    end
  end

  def install
    bin.install "noverlink"
  end

  test do
    assert_match "noverlink", shell_output("#{bin}/noverlink --version")
  end
end
