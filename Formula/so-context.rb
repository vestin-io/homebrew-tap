class SoContext < Formula
  desc "Context management layer for AI agents"
  homepage "https://github.com/vestin-io/so-context"
  license "MIT"

  stable do
    url "git@github.com:vestin-io/so-context.git",
        using: GitDownloadStrategy,
        tag: "v0.0.8",
        revision: "3c5a7f2a1fb7bd08b02f0ab06716d5b3f9af32d9"
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
