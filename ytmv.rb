class Ytmv < Formula
  desc "Interactive CLI wizard for downloading videos and audio from 1000+ sites"
  homepage "https://github.com/PrEvIeS/ytmv"
  url "https://raw.githubusercontent.com/PrEvIeS/ytmv/main/ytmv.py"
  sha256 "1f17252d164c2ec57abfc4a8783e204fcfe1858b4b0e4344393923079d743280"
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
