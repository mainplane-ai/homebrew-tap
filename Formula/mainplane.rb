class Mainplane < Formula
  desc "Open-source agent ecosystem across all your computers, browsers and files"
  homepage "https://mainplane.ai"
  version "0.5.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.mainplane.ai/v#{version}/mainplane-darwin-arm64"
      sha256 "10ee6ffcb10e8913a0d4bf3d03878d01b9fb986f7c93e0ea1fa670bd21a15667"
    end
    on_intel do
      url "https://dl.mainplane.ai/v#{version}/mainplane-darwin-amd64"
      sha256 "bf9b79c2f3ced86064cb147e990996efd168c74bf41d0be2b7325abb3d021c8f"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.mainplane.ai/v#{version}/mainplane-linux-arm64"
      sha256 "4d1ca60b708c3774c490470419135aaae9ce903ed06d09f1913e59b221c99f75"
    end
    on_intel do
      url "https://dl.mainplane.ai/v#{version}/mainplane-linux-amd64"
      sha256 "3118c2791d4ad2462e1c15f23b200beed97c8415ea2cf9fb300009f244aadec8"
    end
  end

  def install
    bin.install Dir["mainplane-*"].first => "mainplane"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/mainplane version").strip
  end
end
