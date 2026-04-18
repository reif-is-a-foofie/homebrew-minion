class Minion < Formula
  desc "Local-first memory + persona toolkit (ChatGPT export → MCP + evidence-based core profile)"
  homepage "https://github.com/reif-is-a-foofie/minion"
  url "https://github.com/reif-is-a-foofie/minion/archive/07475591ed10471dbaf906990dd30a85ccb0dbf4.tar.gz"
  sha256 "dd5e1fbbeb7e15fca11c4b3f930b3ea74d16c22e348cbc6be1c6b6cb3c0cd1f8"
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
