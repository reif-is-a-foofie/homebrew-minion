class Minion < Formula
  desc "Local-first memory + persona toolkit (ChatGPT export → MCP + evidence-based core profile)"
  homepage "https://github.com/reif-is-a-foofie/minion"
  url "https://github.com/reif-is-a-foofie/minion/archive/adce77f1ecf2fb87e89daf3870dbdb95cf647bbb.tar.gz"
  sha256 "35f3ae0d7feb3ad3983d8fdfd5c0af7eab2f2aacbab09b0449a39a17fd7f06f7"
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
