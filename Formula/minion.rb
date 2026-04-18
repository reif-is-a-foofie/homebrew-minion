class Minion < Formula
  desc "Local-first memory + persona toolkit (ChatGPT export → MCP + evidence-based core profile)"
  homepage "https://github.com/reif-is-a-foofie/minion"
  url "https://github.com/reif-is-a-foofie/minion/archive/d8ec500f8bdba62cc22daad081d505f4a384da1e.tar.gz"
  sha256 "238617810b199b9132285a78bcca34965b36345f6e76182fa6a348d707071eb3"
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
