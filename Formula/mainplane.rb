class Mainplane < Formula
  desc "Open-source agent ecosystem across all your computers, browsers and files"
  homepage "https://mainplane.ai"
  version "0.5.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.mainplane.ai/v#{version}/mainplane-darwin-arm64"
      sha256 "c12876e8085f226d6ef249eeef5039c1615d9fbc91c3a4cf1b3b603ac4506445"
    end
    on_intel do
      url "https://dl.mainplane.ai/v#{version}/mainplane-darwin-amd64"
      sha256 "79d4bad36bfe7ad261a03d7d9bd679b1ed7a6fd572301c3669c99cdc89d02b88"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.mainplane.ai/v#{version}/mainplane-linux-arm64"
      sha256 "6d41bfae32a173bf01e0ef24ce5cd7da5c2079b657ceddc403e10acabb195107"
    end
    on_intel do
      url "https://dl.mainplane.ai/v#{version}/mainplane-linux-amd64"
      sha256 "acb12a61c8f8f94570029d6b2c18ed6300d405ef96efb66b544cdffea4a2795b"
    end
  end

  def install
    bin.install Dir["mainplane-*"].first => "mainplane"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/mainplane version").strip
  end
end
