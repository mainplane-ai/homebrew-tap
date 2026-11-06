class Mainplane < Formula
  desc "Open-source agent ecosystem across all your computers, browsers and files"
  homepage "https://mainplane.ai"
  version "0.5.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.mainplane.ai/v#{version}/mainplane-darwin-arm64"
      sha256 "a2aeff81023279aba4721085b9f7c7435b3951418ecc6921215407c07f6164ae"
    end
    on_intel do
      url "https://dl.mainplane.ai/v#{version}/mainplane-darwin-amd64"
      sha256 "f8ac8ba127b10cdf94d1a6ae3f9db75226917b957b170e364969d122fdd0419b"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.mainplane.ai/v#{version}/mainplane-linux-arm64"
      sha256 "5b6c294a3ca9f62faeb717f111a4df8707fb51332290c1ba4ec5170b44ede6b0"
    end
    on_intel do
      url "https://dl.mainplane.ai/v#{version}/mainplane-linux-amd64"
      sha256 "8c05ba034c35431e4b199a39bdfabe1a2c51246e4d34fb25eeb2cc7cf44e48a8"
    end
  end

  def install
    bin.install Dir["mainplane-*"].first => "mainplane"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/mainplane version").strip
  end
end
