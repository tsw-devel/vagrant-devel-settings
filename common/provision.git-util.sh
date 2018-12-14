#!/bin/bash
# Please run as user
srcdir="$HOME/.git-util.d"

install_url_list=(\
    https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh \
    https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash \
    )

mkdir -p $srcdir
for url in "${install_url_list[@]}"
do
  wget -nc -nv $url -P $srcdir
done
setting="if [ -e ~/.git-bash.rc ]; then source ~/.git-bash.rc; fi"
grep -q "\.git-bash.rc" ~/.bashrc || echo "$setting" >> ~/.bashrc
