class Muthr < Formula
  desc "Zero-trust orchestrator for secure inference and isolated AI agent execution"
  homepage "https://github.com/tappunk/muthr"
  version "0.1.28"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "lima"
  depends_on "llama.cpp"

  url "https://github.com/tappunk/muthr/releases/download/v#{version}/muthr-#{version}-bin-macos-arm64.tar.gz"
  sha256 "4035fa393870c3f6ca0e23f2c8c0a6e6592f571c4e14e0672d3e953b7d038ef4"

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
    assert_match version.to_s, shell_output("#{bin}/muthr --version")
  end
end
