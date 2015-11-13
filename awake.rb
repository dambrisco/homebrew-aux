class Awake < Formula
  desc "Keeps your computer from 💤"
  homepage "https://github.com/dambrisco/awake"
  url "https://github.com/dambrisco/awake/archive/0.0.2.tar.gz"
  sha256 "19f6de21f4b58f545865854892ecb92bef91ea62a9c4215e2803724fb413e902"

  depends_on "jython"

  def install
    bin.install "awake"
  end

  test do
  end
end
