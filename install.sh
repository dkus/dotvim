#!/usr/bin/env bash

# thanks to https://github.com/maralla/dotvim/blob/master/install.sh

log() {
    echo -e "\033[1m\033[32mINFO:\033[0m $1"
}

if [ -d "$HOME/.vim" ]
then
    ts=$(date +"%Y%m%d@%H:%M:%S")
    log "Make backup of '\$HOME/.vim' to '\$HOME/.vim.$ts'"
    mv $HOME/{.vim,.vim.$ts}
fi

p="$HOME/.local/bin/pack"
log "Installing pack plugin for vim into ~/.local/bin/pack"
(mkdir -p $p && cd $p)
v=v0.2.5
os=x86_64-unknown-linux-gnu
wget -q https://github.com/maralla/pack/releases/download/$v/pack-$v-$os.tar.gz -O $p/pack-$v.tar.gz
(cd $p && tar -vxf pack-$v-$os.tar.gz)
log "Cleaning pack installation..."
(ls | grep -v pack | xargs rm)

case :$PATH: in
  *:$p:*)  ;;  # do nothing
  *) PATH=$p:$PATH ;;
esac
log "Done installing pack"

log "Cloning dkus/dotvim..."
git clone https://github.com/dkus/dotvim.git $HOME/.vim
log "Install vim packs..."
(cd $HOME/.vim && pack install)
log "Done"
