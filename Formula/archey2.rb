class Archey2 < Formula
  desc "Updated archey graphical system information display for macOS"
  homepage "https://jakepez.github.io/archey2-osx/"
  license "GPL-2.0-or-later"
  url "https://github.com/jakepez/archey2-osx/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "6d0126e7283a2767f1ceb529e044fb7623e6ef40cc8b20671b6664795e906307"
  head "https://github.com/jakepez/archey2-osx.git", branch: "main"

  #stable do
  #  url "https://github.com/jakepez/archey2-osx/archive/refs/tags/v1.0.4.tar.gz"
  #  sha256 "dc04d007822dfbf9d60068f0a1c734e3a5e27fef2ebed7686192e26b2e55852c"
  #end

  # Optionally, specify a repository to be used. Brew then generates a
  # `--HEAD` option. Remember to also test it.
  # The download strategies (:using =>) are the same as for `url`.
  # "master" is the default branch and doesn't need stating with a :branch conditional
  head "https://github.com/jakepez/archey2-osx.git", :branch => "develop"

  depends_on :macos

  conflicts_with "archey4", because: "both install `archey` binaries"

  def install
    bin.install "bin/archey"
  end

  test do
    assert_match "Archey OS X 1", shell_output("#{bin}/archey --help")
  end
end
