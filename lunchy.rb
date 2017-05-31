require 'formula'

class Ruby19 < Requirement # rubocop:disable Style/Documentation
  fatal true
  default_formula 'ruby'

  satisfy build_env: false do
    next unless which 'ruby'
    version = /\d\.\d/.match `ruby --version 2>&1`

    next unless version
    # noinspection RubyArgCount
    Version.new(version.to_s) >= Version.new('1.9')
  end

  def modify_build_environment
    ruby = which 'ruby'
    return unless ruby

    ENV.prepend_path 'PATH', ruby.dirname
  end

  def message; <<-EOS.undent
    Lunchy requires Ruby >= 1.9.3
  EOS
  end
end

class Lunchy < Formula # rubocop:disable Style/Documentation
  homepage 'https://github.com/eddiezane/lunchy/'
  url 'http://assets.merqlove.ru.s3.amazonaws.com/lunchy/lunchy-0.10.1.tgz'
  sha256 '6c25f53f6509766f14e0e3c002b59b8d9ece6981319184c359e0c28d31b20aa1'

  depends_on Ruby19

  def install
    libexec.install Dir['*']
    bin.write_exec_script libexec / 'bin/lunchy'
  end

  test do
    system "#{bin}/lunchy", 'ls'
  end

  def caveats; <<-EOS.undent
    lunchy requires an installation of Ruby 1.9.3 or greater.
  EOS
  end
end
