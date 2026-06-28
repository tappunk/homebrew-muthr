class Muthr < Formula
  desc "Zero-trust orchestrator for secure inference and isolated AI agent execution"
  homepage "https://github.com/tappunk/muthr"
  version "0.1.45"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "lablup/tap/mlxcel"

  url "https://github.com/tappunk/muthr/releases/download/v#{version}/muthr-#{version}-bin-macos-arm64.tar.gz"
  sha256 "635176b9342a360e64d110732e907170a6aa619ddedef2def981876355be1fbd"

  def install
    bin.install "muthr"
  end

  def caveats
    <<~EOS
      muthr configurations must be initialized before first execution. Run:
        muthr init

      Runtime prerequisite:
        container CLI must be available on this host.

      MLX runtime (optional):
        muthr engine start --profile mlxcel/quality-qwen3.6-35b-a3b-4bit.ini
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/muthr --version")
  end
end
