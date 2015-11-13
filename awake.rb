class Awake < Formula
  desc "Keeps your computer from 💤"
  homepage "https://github.com/dambrisco/awake"
  url "https://github.com/dambrisco/awake/archive/0.0.3.tar.gz"
  sha256 "b45ad5351b2a90c8b489b1a807563eac7ce8baa5d9694e65c383b0ad16a8b52f"

  depends_on "jython"

  def install
    bin.install "awake"
  end

  test do
  end
end
