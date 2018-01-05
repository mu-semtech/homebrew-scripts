require 'formula'

class Edi < Formula
  homepage 'http://mu.semte.ch'
  url 'https://github.com/madnificent/docker-ember.git',
      :revision => "03f59a31f6cc172a4c8c8a8e68c39569fdc70d40"
  version '2.17.0'

  head 'https://github.com/madnificent/docker-ember.git'

  depends_on "docker-ssh-agent-forward"

  def install
    bin.install 'bin/ed', 'bin/edi', 'bin/edl', 'bin/eds'
  end
end
