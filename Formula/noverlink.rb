class Noverlink < Formula
  desc "Local-to-global tunneling CLI - expose your localhost to the web"
  homepage "https://github.com/noverwork/noverlink"
  version "v1.2.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.2.0/noverlink-darwin-arm64.tar.gz"
      sha256 "1a3526c9d5bc294acc76217080afc62e7ccd06561f07f58cbf88e7868130a550"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.2.0/noverlink-darwin-x64.tar.gz"
      sha256 "7089c7db2cc512a08d053122a8d3cc7e7868c90be46035113f7bb94a398544ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/v1.2.0/noverlink-linux-arm64.tar.gz"
      sha256 "4bbbae6901b68bff883f7210659f83bd2114f3c1aabb9e61bf86a8fb7e5ed0b4"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/v1.2.0/noverlink-linux-x64.tar.gz"
      sha256 "80f5a0a69a9a396759d74ab691fc00c54e66c18a3eacf3af06560ee53e63e892"
    end
  end

  def install
    bin.install "noverlink"
  end

  test do
    assert_match "noverlink", shell_output("#{bin}/noverlink --version")
  end
end
