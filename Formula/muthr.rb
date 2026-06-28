class Muthr < Formula
  desc "Zero-trust orchestrator for secure inference and isolated AI agent execution"
  homepage "https://github.com/tappunk/muthr"
  version "0.1.46"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "lablup/tap/mlxcel"

  url "https://github.com/tappunk/muthr/releases/download/v#{version}/muthr-#{version}-bin-macos-arm64.tar.gz"
  sha256 "f946786bd29f776f8f73bec5be1fc039d0e1460b9bbd6504bee31b0f10ccf817"

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
