class Blastguard < Formula
  desc "Predict CVE blast radius with SBOM, runtime reachability, and exposure tracing"
  homepage "https://github.com/justrunme/blastguard"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/justrunme/blastguard/releases/download/v0.2.0/blastguard_0.2.0_darwin_arm64.tar.gz"
      sha256 "7efc1a9575a64d5863ffaf133026086de543bcda14bfcbaab9ac801df0aa8e89"
    else
      url "https://github.com/justrunme/blastguard/releases/download/v0.2.0/blastguard_0.2.0_darwin_amd64.tar.gz"
      sha256 "5d2fe5e63ec11774dde34600a3c8a2f4b9a7d9bf3fba999335bea513067239c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/justrunme/blastguard/releases/download/v0.2.0/blastguard_0.2.0_linux_arm64.tar.gz"
      sha256 "8a4e61a94eae5c39d0fd379910f190dffe8424e3f0c6f0a69c17ab5ae4f39820"
    else
      url "https://github.com/justrunme/blastguard/releases/download/v0.2.0/blastguard_0.2.0_linux_amd64.tar.gz"
      sha256 "033f68e2563e3b5cfd45a741620df8e0aad9f34ae6bbefc9da7bb44a25f54072"
    end
  end

  def install
    bin.install "blastguard"
  end

  test do
    assert_match "BlastGuard", shell_output("#{bin}/blastguard 2>&1")
  end
end
