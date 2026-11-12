class Passdrop < Formula
  desc "Ask the human for secrets in a local window; values never enter the agent's chat"
  homepage "https://github.com/akcware/passdrop"
  url "https://github.com/akcware/passdrop/releases/download/v0.1.0/passdrop-v0.1.0-macos-universal.tar.gz"
  sha256 "7b889ff819b318aea9af44279d3537d4cb8d4749f4fabc0f108e2c35025c518b"
  license "MIT"

  depends_on :macos

  def install
    bin.install "passdrop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/passdrop --version")
  end
end
