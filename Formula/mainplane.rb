class Mainplane < Formula
  desc "Open-source agent ecosystem across all your computers, browsers and files"
  homepage "https://mainplane.ai"
  version "0.5.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.mainplane.ai/v#{version}/mainplane-darwin-arm64"
      sha256 "879e36f7ed79f3ffb63de906ea74c44e076223699fbc4c8ac709f18ed700a276"
    end
    on_intel do
      url "https://dl.mainplane.ai/v#{version}/mainplane-darwin-amd64"
      sha256 "5f1c630b4b011d64a0d13956c67b9e652629e752b24ead399715fa29d9b1b722"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.mainplane.ai/v#{version}/mainplane-linux-arm64"
      sha256 "16bb848bbea76dfd7f2182228146b7f900b018c7a934f3932bfccdfc84ae602f"
    end
    on_intel do
      url "https://dl.mainplane.ai/v#{version}/mainplane-linux-amd64"
      sha256 "d2833f95c6df01258b3a0c8a8375b7d4688511d9d46705c54b9f9ab9f16419bc"
    end
  end

  def install
    bin.install Dir["mainplane-*"].first => "mainplane"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/mainplane version").strip
  end
end
