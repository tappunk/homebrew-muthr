class Muthr < Formula
  desc "Zero-trust orchestrator for secure inference and isolated AI agent execution"
  homepage "https://github.com/tappunk/muthr"
  version "0.1.36"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "lima"
  depends_on "llama.cpp"

  url "https://github.com/tappunk/muthr/releases/download/v#{version}/muthr-#{version}-bin-macos-arm64.tar.gz"
  sha256 "b086c11a98ab13eb5d95e3128cb08f8ed768c4e7ab0fc6e6a20700e20f8322bd"

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
