class Muthr < Formula
  desc "Zero-trust orchestrator for secure inference and isolated AI agent execution"
  homepage "https://github.com/tappunk/muthr"
  version "0.1.44"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "llama.cpp"

  url "https://github.com/tappunk/muthr/releases/download/v#{version}/muthr-#{version}-bin-macos-arm64.tar.gz"
  sha256 "2fc57dbd16792d2e317b3b94eb0fa72e40e58c57cc6d9d9eeac0fafbb4c4334a"

  def install
    bin.install "muthr"
  end

  def caveats
    <<~EOS
      muthr configurations must be initialized before first execution. Run:
        muthr init

      Runtime prerequisite:
        Apple container CLI must be available on this host.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/muthr --version")
  end
end
