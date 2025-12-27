class Noverlink < Formula
  desc "Local-to-global tunneling CLI - expose your localhost to the web"
  homepage "https://github.com/noverwork/noverlink"
  version "v1.1.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.1.2/noverlink-darwin-arm64.tar.gz"
      sha256 "f169da58ac21160e75a49248bc0918674a607c94b88fdce1dd6a409ee3516ef5"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.1.2/noverlink-darwin-x64.tar.gz"
      sha256 "6760166d977a555f88ca6244dbac5f609c360c193376db2386b18445f0c58009"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.1.2/noverlink-linux-arm64.tar.gz"
      sha256 "94b5bd36d1ca7069b571aa5643f8332e4b127b8bcd0272974f95046d30f3e4f6"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.1.2/noverlink-linux-x64.tar.gz"
      sha256 "7c6da8804e38490fcb077fd4a7a2099d7cfba07649794d9247b407b45bf0e315"
    end
  end

  def install
    bin.install "noverlink"
  end

  test do
    assert_match "noverlink", shell_output("#{bin}/noverlink --version")
  end
end
