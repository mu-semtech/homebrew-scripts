require 'formula'

class Edi < Formula
  homepage 'http://mu.semte.ch'
  url 'https://github.com/madnificent/docker-ember.git',
      :revision => "94a730e16aff7965b6974e57d169fdc63b0be921"
  version '3.0.1'

  head 'https://github.com/madnificent/docker-ember.git'

  depends_on "docker-ssh-agent-forward"

  def install
    bin.install 'bin/ed', 'bin/edi', 'bin/edl', 'bin/eds'
  end
end
