require 'formula'

class Edi < Formula
  homepage 'http://mu.semte.ch'
  url 'https://github.com/madnificent/docker-ember.git',
      :revision => "4108573acf73bc14ac2b447c533728d07df7352e"
  version '2.18.0'

  head 'https://github.com/madnificent/docker-ember.git'

  depends_on "docker-ssh-agent-forward"

  def install
    bin.install 'bin/ed', 'bin/edi', 'bin/edl', 'bin/eds'
  end
end
