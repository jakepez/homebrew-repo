class Archey2 < Formula
  desc "Updated archey graphical system information display for macOS"
  homepage "https://obihann.github.io/archey-osx/"
  license "GPL-2.0-or-later"
  revision 1
  head "https://github.com/obihann/archey-osx.git", branch: "master"

  stable do
    url "https://github.com/jakepez/archey2-osx/archive/refs/heads/develop.tar.gz"
    sha256 "fa80dfe9fa45c9c42d1b723454d6f07044e5649f67e000e437a3ab440ee1600a"

  depends_on :macos

  conflicts_with "archey4", because: "both install `archey` binaries"
  conflicts_with "archey", because: "both install `archey` binaries"

  def install
    bin.install "bin/archey"
  end

  test do
    assert_match "Archey OS X 1", shell_output("#{bin}/archey --help")
  end
end
