# dotfiles
config files to setup my environment


zsh (sudo apt-get install zsh)

oh-my-zsh (sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)")


move zsh config

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-syntax-highlighting/

mkdir ~/.fonts

mkdir -p ~/.config/fontconfig/conf.d


cp ~/PATH\_TO\_REPO/dotfiles/fonts/\* ~/.fonts

fc-cache -vf ~/.fonts

cp ~/PATH\_TO\_REPO/dotfiles/fonts/fontconfig/10-powerline-symbols.conf ~/.config/fontconfig/conf.d


tmux (sudo apt install tmux)

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


move tmux config

prefix + I


i3-gaps (https://gist.github.com/boreycutts/6417980039760d9d9dac0dd2148d4783)

i3blocks (sudo apt install i3blocks)

move i3 config and i3blocks config



also need:

feh

compton

spotify

slack

thunderbird

intellij
