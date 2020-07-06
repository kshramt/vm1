from ubuntu:20.04

workdir /root

run ln -s d/dotfile_w/u2004 dotfile \
      && ln -s dotfile/.emacs.d \
      && ln -s dotfile/.tmux.conf \
      && ln -s dotfile/.bashrc \
      && ln -s dotfile/.bash_profile \
      && ln -s dotfile/.inputrc \
      && ln -s dotfile/.config
