class Minion < Formula
  desc "Local-first memory + persona toolkit (ChatGPT export → MCP + evidence-based core profile)"
  homepage "https://github.com/reif-is-a-foofie/minion"
  url "https://github.com/reif-is-a-foofie/minion/archive/6955f0d777a3a8c60e935b21f096196d2058bfe5.tar.gz"
  sha256 "345a30dc5fcbbf1e962532a8c856e27ac040898a9b6df9b074d9c2638f7441bb"
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
