# dotfiles
config files to setup my environment

zsh (sudo apt-get install zsh)
oh-my-zsh (sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)")

move zsh config

mkdir ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d
clone repo
cp ~/PATH\_TO\_REPO/dotfiles/fonts/\* ~/.fonts
fc-cache -vf ~/.fonts
cp ~/PATH\_TO\_REPO/dotfiles/fonts/fontconfig/10-powerline-symbols.conf ~/.config/fontconfig/conf.d

tmux (sudo apt install tmux)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

move tmux config

i3 gaps: 

sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev xutils-dev libxcb-shape0-dev libxcb-xrm-dev autoconf

i3blocks (sudo apt install i3blocks)

move i3 config and i3blocks config
