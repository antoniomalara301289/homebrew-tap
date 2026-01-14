class Grsh < Formula
  desc "Modern Rust shell with AI and PDF features"
  homepage "https://github.com/antoniomalara301289/grsh"
  url "https://github.com/antoniomalara301289/grsh/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "bb6ff0d633f9ec293c7de211d118e37a17d6d16075da6937b084726c4c3f1b0c"
  license "BSD-3-Clause"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/grsh", "--version"
  end
end
