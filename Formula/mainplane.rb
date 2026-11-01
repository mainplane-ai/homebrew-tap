class Mainplane < Formula
  desc "Open-source agent ecosystem across all your computers, browsers and files"
  homepage "https://mainplane.ai"
  version "0.5.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.mainplane.ai/v#{version}/mainplane-darwin-arm64"
      sha256 "c89cc62a13dbc004a52fc3f64ed81ef6d1ca7320873471736cd5a1322d840745"
    end
    on_intel do
      url "https://dl.mainplane.ai/v#{version}/mainplane-darwin-amd64"
      sha256 "296c88d2abdf9562bd8020687b83b35bb424e7e862013e2c003cd866c84bd800"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.mainplane.ai/v#{version}/mainplane-linux-arm64"
      sha256 "0ab763fd57f73c908c23caf796b84546bb3fb03d9cde1d841f1081e6c42a8a7e"
    end
    on_intel do
      url "https://dl.mainplane.ai/v#{version}/mainplane-linux-amd64"
      sha256 "59ac34cb4d7515faa18465ee28541aa84044521f223fa74d01084fe4456a6ea7"
    end
  end

  def install
    bin.install Dir["mainplane-*"].first => "mainplane"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/mainplane version").strip
  end
end
