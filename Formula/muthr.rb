class Muthr < Formula
  desc "Zero-trust orchestrator for secure inference and isolated AI agent execution"
  homepage "https://github.com/tappunk/muthr"
  version "0.1.21"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "lima"
  depends_on "llama.cpp"

  url "https://github.com/tappunk/muthr/releases/download/v#{version}/muthr-#{version}-bin-macos-arm64.tar.gz"
  sha256 "b514b8eb3606e336be1aad5f2964c324a87b37a36a9483c9b813f0ace1bb8084"

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
