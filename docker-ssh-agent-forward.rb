require 'formula'

class DockerSshAgentForward < Formula
  homepage 'https://github.com/uber-common/docker-ssh-agent-forward'
  url 'https://github.com/uber-common/docker-ssh-agent-forward.git',
      :revision => '494b72d3f946380c760cf6c8bce629be4b9dbb65'
  version '2.17.1'

  head 'https://github.com/uber-common/docker-ssh-agent-forward.git'

  depends_on "docker" => :build
  depends_on "cmake" => :build

  def install
    system "make"
    # make install will not work, see make file and https://github.com/Homebrew/brew/issues/2994
    mv "pinata-ssh-forward.sh", "pinata-ssh-forward"
    mv "pinata-ssh-mount.sh", "pinata-ssh-mount"
    mv "pinata-ssh-pull.sh", "pinata-ssh-pull"
    bin.install  "pinata-ssh-forward", "pinata-ssh-mount", "pinata-ssh-pull"
  end
end
