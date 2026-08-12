class Skeeper < Formula
  desc "Minimal terminal session keeper focused on session persistence"
  homepage "https://github.com/dak-ia/skeeper"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dak-ia/skeeper/releases/download/v0.1.0/skeeper-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "95f7b64f3be4c0a81c5046cf15fa9e3487a7212ed442ff97d260b45daf20e811"
    end
    on_intel do
      url "https://github.com/dak-ia/skeeper/releases/download/v0.1.0/skeeper-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "0fa632a65e22738e8ac8629d44b73a95bb146730cf5a01aa619e127356cf072f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dak-ia/skeeper/releases/download/v0.1.0/skeeper-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "77d5a4449f0235527527988d204baffa77d7b6cab20a272d61fea4fe3e7dc7ba"
    end
    on_intel do
      url "https://github.com/dak-ia/skeeper/releases/download/v0.1.0/skeeper-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1d363221aebf4fd6f5f53fbde34b8f97c7416bd5f75139e86411689a00f3cdc9"
    end
  end

  def install
    bin.install "skeeper"
    man1.install "docs/man/skeeper.1"
    bash_completion.install "docs/completions/skeeper.bash"
    zsh_completion.install "docs/completions/_skeeper"
    fish_completion.install "docs/completions/skeeper.fish"
  end

  test do
    assert_match "skeeper #{version}", shell_output("#{bin}/skeeper --version")
  end
end
