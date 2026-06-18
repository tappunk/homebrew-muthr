class Muthr < Formula
  desc "Zero-trust orchestrator for secure inference and isolated AI agent execution"
  homepage "https://github.com/tappunk/muthr"
  version "0.1.16"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "lima"
  depends_on "llama.cpp"
  depends_on "fd"

  url "https://github.com/tappunk/muthr/releases/download/v#{NEW_VERSION}/muthr-\#{version}-bin-macos-arm64.tar.gz"
  sha256 "b0cc03483d62385c62f232e5b1af2adaed26dda57145af0de2418d9630a794d4"

  def install
    bin.install "muthr"
  end

  def caveats
    <<~EOS
      muthr configurations must be initialized before first execution. Run:
        muthr init
    EOS
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/muthr --version")
  end
end
