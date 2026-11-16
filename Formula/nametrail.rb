class Nametrail < Formula
  desc "Code search for AI coding agents across repositories and languages"
  homepage "https://github.com/LIVELUCKY/nametrail"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LIVELUCKY/nametrail/releases/download/v0.1.2/nametrail-aarch64-apple-darwin.tar.gz"
      sha256 "1af74d7e9941653292bffe546fbae493aa232d92d79b5549a144f1a0aabee7f1"
    end
    on_intel do
      url "https://github.com/LIVELUCKY/nametrail/releases/download/v0.1.2/nametrail-x86_64-apple-darwin.tar.gz"
      sha256 "a30d52e160caa8633ed6fe615b175b5c1881c0b51a3b9cbaa98211f36c8bed55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LIVELUCKY/nametrail/releases/download/v0.1.2/nametrail-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7bcef83685fa1778626463fd2f0b2adbda7cb6b0f29d18ced9f1084bf04e5f0e"
    end
    on_intel do
      url "https://github.com/LIVELUCKY/nametrail/releases/download/v0.1.2/nametrail-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8d3c24569265aa44d1e22cb0d99412a469bd9e9bb41b14d0e2cc5496abc80644"
    end
  end

  def install
    bin.install "nametrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nametrail --version")
  end
end
