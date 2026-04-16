class Minion < Formula
  desc "Local-first memory + persona toolkit (ChatGPT export → MCP + evidence-based core profile)"
  homepage "https://github.com/reif-is-a-foofie/minion"
  url "https://github.com/reif-is-a-foofie/minion/archive/7f2c19362027cf613e415160618bd351aae1f3e8.tar.gz"
  sha256 "5d79717994ec94bd4030e89d74897e494e534fe327face4dd6aa9262a7855f26"
  license "Unlicense"

  depends_on "python@3.11"

  def install
    libexec.install "chatgpt_mcp_memory"
    libexec.install "bin/minion"

    bin.install_symlink libexec/"minion"
  end

  test do
    system "#{bin}/minion", "doctor"
  end
end

