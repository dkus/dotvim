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

b=$HOME/.local/bin
p="$b/packdir"
log "Installing pack plugin for vim into ~/.local/bin/packdir"
mkdir -p $p

v=v0.2.5
os=x86_64-unknown-linux-gnu
wget -q https://github.com/maralla/pack/releases/download/$v/pack-$v-$os.tar.gz -O $p/pack-$v.tar.gz

tar -xvf $p/pack-$v.tar.gz -C $p
log "Cleaning pack installation..."
(ls $p | grep -v "^pack$" | xargs rm -rf)
(chmod u+x $p/pack && mv $p/pack $b && rm -rf $p)
log "Done installing pack"

log "Cloning dkus/dotvim..."
git clone https://github.com/dkus/dotvim.git $HOME/.vim
log "Install vim packs..."
($HOME/.local/bin/pack install)
log "Done"
