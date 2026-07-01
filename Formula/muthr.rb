class Muthr < Formula
  desc "Zero-trust orchestrator for MLX inference, container-based sandboxes, and MCP services on Apple Silicon"
  homepage "https://github.com/tappunk/muthr"
  version "0.1.47"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "lablup/tap/mlxcel"

  url "https://github.com/tappunk/muthr/releases/download/v#{version}/muthr-#{version}-bin-macos-arm64.tar.gz"
  sha256 "fd4a4fe8e4fcfb6f3877d9c2a73abfe38226decf1008d8d1f86344875dc1f960"

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
