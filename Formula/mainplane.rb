class Mainplane < Formula
  desc "Open-source agent ecosystem across all your computers, browsers and files"
  homepage "https://mainplane.ai"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.mainplane.ai/v#{version}/mainplane-darwin-arm64"
      sha256 "b7d9499d269e661f6674125ea455b137a7bdb650a2606f3fef24a7ea1752dbb5"
    end
    on_intel do
      url "https://dl.mainplane.ai/v#{version}/mainplane-darwin-amd64"
      sha256 "568b0afbca5504a808be7c4459e0c04de072767b9f6ec8c8d133b18cf291a187"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.mainplane.ai/v#{version}/mainplane-linux-arm64"
      sha256 "3f73ed1b0401d274696394e5588ce337f42cd27b9da7b918264b55a69a72d0c1"
    end
    on_intel do
      url "https://dl.mainplane.ai/v#{version}/mainplane-linux-amd64"
      sha256 "9569accffe2f44bab2c3f1953294bf33f192441641393c96a5698e694b8f42a7"
    end
  end

  def install
    bin.install Dir["mainplane-*"].first => "mainplane"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/mainplane version").strip
  end
end
