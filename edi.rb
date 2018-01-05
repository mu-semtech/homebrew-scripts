require 'formula'

class Edi < Formula
  homepage 'http://mu.semte.ch'
  url 'https://github.com/madnificent/docker-ember.git',
      :revision => "4f10c3169f8ac66542f39788180f55621a7541cb"
  version '2.17.1'

  head 'https://github.com/madnificent/docker-ember.git'

  depends_on "docker-ssh-agent-forward"

  def install
    bin.install 'bin/ed', 'bin/edi', 'bin/edl', 'bin/eds'
  end
end
