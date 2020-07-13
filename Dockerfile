from ubuntu:20.04

workdir /root

run apt-get update \
      && DEBIAN_FRONTEND=noninteractive apt-get install -y \
      bash-completion \
      build-essential \
      curl \
      emacs \
      git \
      less \
      python3-pip \
      python3-venv \
      ssh \
      systemctl \
      tig \
      tmux \
      wget \
      && rm -rf /var/lib/apt/lists/*

run ln -s d/p/dotfile_w/u2004 dotfile \
      && ln -sf dotfile/.bash_history \
      && ln -sf dotfile/.bash_location \
      && ln -sf dotfile/.emacs.d \
      && ln -sf dotfile/.tmux.conf \
      && ln -sf dotfile/.bashrc \
      && ln -sf dotfile/.bash_profile \
      && ln -sf dotfile/.inputrc \
      && ln -sf dotfile/.config \
      && ln -sf dotfile/.gitconfig
      && ln -sf ~/d/h/.tmux \
      && ln -sf ~/d/h/venv \
      && ln -sf ~/d/h/.cache \
      && ln -sf ~/d/h/.local \
      && :
