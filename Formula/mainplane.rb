class Mainplane < Formula
  desc "Open-source agent ecosystem across all your computers, browsers and files"
  homepage "https://mainplane.ai"
  version "0.5.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.mainplane.ai/v#{version}/mainplane-darwin-arm64"
      sha256 "986f1157743c713e971686c7ea54d7c6cfd2a703c7a5942b37e6247dfec82a68"
    end
    on_intel do
      url "https://dl.mainplane.ai/v#{version}/mainplane-darwin-amd64"
      sha256 "a3fca289d9fbfe1df63ce39708ed8df240b118249348fbf8d4bcf3324670b724"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.mainplane.ai/v#{version}/mainplane-linux-arm64"
      sha256 "c1c8c534cd6a25f2ede120c63e652a913fbde1b9e2d4dd81b82f4a58e73d0d6b"
    end
    on_intel do
      url "https://dl.mainplane.ai/v#{version}/mainplane-linux-amd64"
      sha256 "5eb8843129c321876d5b010937fd003d2146bf94bc0c3f960be01c28226a3d0e"
    end
  end

  def install
    bin.install Dir["mainplane-*"].first => "mainplane"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/mainplane version").strip
  end
end
