class Archey2 < Formula
  desc "Updated archey graphical system information display for macOS"
  homepage "https://jakepez.github.io/archey2-osx/"
  license "GPL-2.0-or-later"
  version "1.0.3"
  head "https://github.com/jakepez/archey2-osx.git", branch: "main"

  stable do
    url "https://github.com/jakepez/archey2-osx/archive/refs/tags/v1.0.3.tar.gz"
    sha256 "98d9d1afb7e44befef6705360cddfdf90218e758d9684ba10ef6e4cc4b55c46a"
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
