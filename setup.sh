ln -sf $HOME/dotcfg/bashrc $HOME/.bashrc
ln -sf $HOME/dotcfg/bash_aliases $HOME/.bash_aliases
ln -sf $HOME/dotcfg/vimrc $HOME/.vimrc
ln -sf $HOME/dotcfg/rtorrent.rc $HOME/.rtorrent.rc
ln -sf $HOME/dotcfg/gitconfig $HOME/.gitconfig 

GIT=false
for d in $PATH
  do test -x $d/git && GIT=true
done

if $GIT then
  echo "git found! Setting up git..."
  git config --global user.name "Jason King"
  git config --global user.email "mazdagtr@gmail.com"
  git config --global user.ename "mazdagtr@gmail.com"
  git config --global credential.helper store
fi
