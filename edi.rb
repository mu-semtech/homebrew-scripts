require 'formula'

class Edi < Formula
  homepage 'http://mu.semte.ch'
  url 'https://github.com/madnificent/docker-ember.git',
      :revision => "31f1b5bfd51e15ee7a66fb27c9e80e17a37cec38"
  version '3.10.1'

  head 'https://github.com/madnificent/docker-ember.git'

  depends_on "docker-ssh-agent-forward"

  def install
    bin.install 'bin/ed', 'bin/edi', 'bin/edl', 'bin/eds'
  end
end
