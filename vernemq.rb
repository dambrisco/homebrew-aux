class Vernemq < Formula
  desc "Distributed MQTT Broker"
  homepage "https://vernemq.com"
  # url "https://s3.amazonaws.com/vernemq/vernemq-1.0.0-OSX-x86_64.tar.gz"
  url "https://github.com/erlio/vernemq/archive/1.3.1.tar.gz"
  # sha256 "a6416d051435d81a17f262f359041966ff50defdefc97ce515a8ee3f5e3755f5"
  sha256 "d6d156663087b4bbb61c7f3f2d620d80415c34f5bda4822d70a1e4628422bfe8"

  bottle :unneeded

  depends_on :macos => :mountain_lion
  depends_on :arch => :x86_64
  depends_on "erlang"
  depends_on "openssl"

  def install
    logdir = var + "log/vernemq"
    datadir = var + "lib/vernemq"

    # Install the base files
    logdir.mkpath
    datadir.mkpath

    # system "make", "rel"
    system "LDFLAGS=-L/usr/local/opt/openssl/lib", "CFLAGS=-I/usr/local/opt/openssl/include", "make", "rel"

    bin.write_exec_script libexec/"bin/vernemq"
    bin.write_exec_script libexec/"bin/vmq-admin"
  end

  test do
    system bin/"vernemq", "start"
    system bin/"vernemq", "ping"
    system bin/"vernemq", "stop"
  end
end
