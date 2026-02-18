class SaturnCli < Formula
  desc "Command-line interface for Saturn Platform"
  homepage "https://github.com/kpizzy812/saturn-cli"
  version "1.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kpizzy812/saturn-cli/releases/download/v#{version}/saturn-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "b0051611625d7bd85f1f19172c30c8119ae8ef25eeb42c279d7716e893855bf7"
    else
      url "https://github.com/kpizzy812/saturn-cli/releases/download/v#{version}/saturn-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "6f1a9e7ec449e3dcd0136d9545f0b3ab046f55eb5b6a786482916cdf7ab12d17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kpizzy812/saturn-cli/releases/download/v#{version}/saturn-cli_#{version}_linux_arm64.tar.gz"
      sha256 "7c663b9b33e4cd96258ff3e59450e79032ee06483203270e2ddaaf9fa31c21db"
    else
      url "https://github.com/kpizzy812/saturn-cli/releases/download/v#{version}/saturn-cli_#{version}_linux_amd64.tar.gz"
      sha256 "21ca7b7707ad1c32c4728a999b16b26a6cc76fc7ff107bdabbec0bf153880a62"
    end
  end

  def install
    bin.install "saturn"
  end

  test do
    assert_match "saturn version", shell_output("#{bin}/saturn version")
  end
end
