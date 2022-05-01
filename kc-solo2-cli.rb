class KcSolo2Cli < Formula
  desc "Solo 2 library and CLI in Rust"
  homepage "https://github.com/solokeys/solo2-cli"

  url "https://github.com/solokeys/solo2-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "b17b6e846089f61af2ae58784f05daf2f17de4a63e8a890f9f525880b7e590be"

  depends_on "kc-pcsc-lite"
  depends_on "kc-ccid"
  depends_on "rust" => :build

  patch :DATA
  patch :p0, :DATA

  def install
    system "cargo build --release"
    bin.install "target/release/solo2"
  end
end

__END__
diff --git a/.cargo/config b/.cargo/config
new file mode 100644
index 0000000..4871d47
--- /dev/null
+++ b/.cargo/config
@@ -0,0 +1,7 @@
+[target.aarch64-apple-darwin.pcsc]
+rustc-link-search = ["/opt/homebrew/lib"]
+rustc-link-lib = ["pcsclite"]
+
+[target.x86_64-apple-darwin.pcsc]
+rustc-link-search = ["/usr/local/homebrew/lib"]
+rustc-link-lib = ["pcsclite"]
