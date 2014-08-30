#! /usr/bin/env sh

realpath () {
  [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

CWD=$(dirname `realpath $0`)

ln -sfv "$CWD/.vimrc.before.local" ~/
ln -sfv "$CWD/.vimrc.local" ~/
ln -sfv "$CWD/.vimrc_ycm_extra_conf.py" ~/

