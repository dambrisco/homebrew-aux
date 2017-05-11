class Awake < Formula
  desc "Keeps your computer from 💤"
  homepage "https://github.com/dambrisco/awake"
  url "https://github.com/dambrisco/awake/archive/0.0.4.tar.gz"
  sha256 "3fecd0bcff050529b0ddc50a2f6bcdb2a5e9c7641a6e649c675e3cf53f80bdde"

  depends_on "jython"

  def install
    bin.install "awake"
  end

  test do
  end
end
