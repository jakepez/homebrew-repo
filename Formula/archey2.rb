class Archey2 < Formula
  desc "Updated archey graphical system information display for macOS"
  homepage "https://jakepez.github.io/archey2-osx/"
  license "GPL-2.0-or-later"
  version "1.0.1"
  head "https://github.com/jakepez/archey2-osx.git", branch: "main"

  stable do
    url "https://github.com/jakepez/archey2-osx/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "64cf51a04e89e941ce1e19433e5cc5e8e6db72dfee3d4bc082413c004084632b"
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
