class Ytmv < Formula
  desc "Interactive CLI wizard for downloading videos and audio from 1000+ sites"
  homepage "https://github.com/PrEvIeS/ytmv"
  url "https://raw.githubusercontent.com/PrEvIeS/ytmv/main/ytmv.py"
  sha256 "ac2a35cb2023d50ae03b068b2bc8d106271cbd998b5b1ec3ab9f4d67ac5d7f7f"
  version "1.0.0"
  license "MIT"

  depends_on "python@3.11"
  depends_on "yt-dlp"
  depends_on "ffmpeg"

  def install
    # Install Python dependencies
    system "pip3", "install", "--break-system-packages", "click", "rich", "questionary"

    # Install the main script
    bin.install "ytmv.py" => "ytmv"
  end

  test do
    assert_match "ytmv", shell_output("#{bin}/ytmv --help")
  end
end
