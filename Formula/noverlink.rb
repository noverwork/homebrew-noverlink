class Noverlink < Formula
  desc "Local-to-global tunneling CLI - expose your localhost to the web"
  homepage "https://github.com/noverwork/noverlink"
  version "0.0.0-4d977a6"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-darwin-arm64.tar.gz"
      sha256 "87a8e19a953be485e9620c632d674f5ee0879b0d1cac0fd08cfc61da5791ca32"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-darwin-x64.tar.gz"
      sha256 "93019611eb5e0f29cb5e7ad38b22a5cbd41392ae73aa94524223cdcd9aada013"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-linux-arm64.tar.gz"
      sha256 "90017ea6646fb9adcbc6bb309d65c9d640540cad0c72d49f14985abc02373119"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-linux-x64.tar.gz"
      sha256 "5cc45d5d9cb592a95e3a6eca59dd6c14dbdb939e64b09a1cd0266d90712e2d14"
    end
  end

  def install
    bin.install "noverlink"
  end

  test do
    assert_match "noverlink", shell_output("#{bin}/noverlink --version")
  end
end
