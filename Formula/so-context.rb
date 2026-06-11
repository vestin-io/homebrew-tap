class SoContext < Formula
  desc "Context management layer for AI agents"
  homepage "https://github.com/vestin-io/so-context"
  license "MIT"

  stable do
    url "git@github.com:vestin-io/so-context.git",
        using: GitDownloadStrategy,
        tag: "v0.0.13",
        revision: "03abeef263b5e7f2c3feebcf67aab79fd9baa702"
  end

  head "git@github.com:vestin-io/so-context.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "so-context", shell_output("#{bin}/so-context --help")
  end
end
