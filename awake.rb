class Awake < Formula
  desc "Keeps your computer from 💤"
  homepage "https://github.com/dambrisco/awake"
  url "https://github.com/dambrisco/awake/archive/0.0.1.tar.gz"
  sha256 "9f2b26c5dddc6cfda126465d794591f3be2fdb896c718ead28179cf3282d23f9"

  depends_on "jython"

  def install
    bin.install "awake"
  end

  test do
  end
end
