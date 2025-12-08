class Noverlink < Formula
  desc "Local-to-global tunneling CLI - expose your localhost to the web"
  homepage "https://github.com/noverwork/noverlink"
  version "0.0.0-6e3c469"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-darwin-arm64.tar.gz"
      sha256 "0589c985f423fd68a0fb17fbbc8fa5d160ae507f420fb7f8973a3383b65d1b11"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-darwin-x64.tar.gz"
      sha256 "dcc436bedbb1e426b1c2ca6af91bae8ad86583b24c261663375b12381825a21c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-linux-arm64.tar.gz"
      sha256 "5589911dbf97ddf2105db7f33fe79c1504d7f46e3c8f1e0b5690cee2087a4080"
    end

    on_intel do
      url "https://github.com/noverwork/noverlink/releases/download/latest/noverlink-linux-x64.tar.gz"
      sha256 "8bb8e5e46f2623ccbb7b3f7d163faafdef73b29874c1e1942a372fd848e1e19c"
    end
  end

  def install
    bin.install "noverlink"
  end

  test do
    assert_match "noverlink", shell_output("#{bin}/noverlink --version")
  end
end
