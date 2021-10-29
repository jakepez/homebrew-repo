class Archey2 < Formula
  desc "Updated archey graphical system information display for macOS"
  homepage "https://jakepez.github.io/archey2-osx/"
  license "GPL-2.0-or-later"
  version "1.0.1"
  head "https://github.com/jakepez/archey2-osx.git", branch: "main"

  stable do
    url "https://github.com/jakepez/archey2-osx/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "614d986e9994ac24f1ab23ac2b827ed701bce18287e923e64a3cbbb9125e1724"
  end

  # Optionally, specify a repository to be used. Brew then generates a
  # `--HEAD` option. Remember to also test it.
  # The download strategies (:using =>) are the same as for `url`.
  # "master" is the default branch and doesn't need stating with a :branch conditional
  head "https://github.com/jakepez/archey2-osx.git", :branch => "develop"

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
