from ubuntu:20.04

workdir /root

run apt-get update \
      && DEBIAN_FRONTEND=noninteractive apt-get install -y \
      ssh \
      systemctl \
      git \
      wget \
      build-essential \
      && rm -rf /var/lib/apt/lists/*

run ln -s d/dotfile_w/u2004 dotfile \
      && ln -sf dotfile/.emacs.d \
      && ln -sf dotfile/.tmux.conf \
      && ln -sf dotfile/.bashrc \
      && ln -sf dotfile/.bash_profile \
      && ln -sf dotfile/.inputrc \
      && ln -sf dotfile/.config
