class Noverlink < Formula
  desc "Local-to-global tunneling CLI - expose your localhost to the web"
  homepage "https://github.com/noverwork/noverlink"
  version "0.0.0-f634f2c"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-darwin-arm64.tar.gz"
      sha256 "88ac1da5d69af0472e7c9e793d7cc19abe2fd601192b7fa5b966fc742ba67755"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-darwin-x64.tar.gz"
      sha256 "32c37498c25f3f6d5cb36d96464485bcba5d29fbf3ff5fc4e3ed6c8ec5ff0385"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-linux-arm64.tar.gz"
      sha256 "2ba562642da35484d277eafc9061d347fe6c61529184485f59c7323db502682b"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-linux-x64.tar.gz"
      sha256 "2e6ebf64732aa822558c58a6e7b146cc43b7fc537d0d9126167eb0025dbf9ada"
    end
  end

  def install
    bin.install "noverlink"
  end

  test do
    assert_match "noverlink", shell_output("#{bin}/noverlink --version")
  end
end
