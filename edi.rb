require 'formula'

class Edi < Formula
  homepage 'http://mu.semte.ch'
  head 'https://github.com/madnificent/docker-ember.git'
  version '2.14.0'

  def install
    bin.install 'bin/ed', 'bin/edi', 'bin/edl', 'bin/eds'
  end
end
