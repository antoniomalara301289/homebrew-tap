class Grsh < Formula
  desc "Modern Rust shell with AI and PDF features"
  homepage "https://github.com/antoniomalara301289/grsh"
  url "https://github.com/antoniomalara301289/grsh/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "74880c98f8045f946777080e457f0031024317f26792f69a5a3a005891369795" # SHA generico per ora
  license "BSD-3-Clause"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/grsh", "--version"
  end
end
