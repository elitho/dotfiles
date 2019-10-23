# dotfiles
config files to setup my environment

## stuffs to do

Clone this repo.

### ZSH
- Install zsh
```
sudo apt install zsh
```
### Oh-My-Zsh
- Install Oh-My-Zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
- Move zsh config
- Clone zsh-syntax-highlighting repo (Its sourced in the bottom of the zsh config)
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-syntax-highlighting/
```
### Fonts
- Make directories
```
mkdir ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d
```
- Copy fonts and config from this repo
```
cp ~/PATH_TO_REPO/dotfiles/fonts/* ~/.fonts
cp ~/PATH_TO_REPO/dotfiles/fonts/fontconfig/10-powerline-symbols.conf ~/.config/fontconfig/conf.d
fc-cache -vf ~/.fonts
```
### Tmux
- Install tmux
```
sudo apt install tmux
```
- Move tmux config
- Clone tmux plugin manager repo (Sourced in the bottom of the tmux config)
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
- Start tmux and install plugins
```
tmux
prefix + I
```
### i3-gaps
- Install dependecies. (If you have i3 installed, remove and purge to avoid conflicts"
```
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev xutils-dev libxcb-shape0-dev libxcb-xrm-dev autoconf
```
- Clone repo and install i3-gaps
```
mkdir ~/tmp
cd ~/tmp 
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
autoreconf --force --install
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install
cd
rm -rf ~/tmp
```
- Install i3blocks, feh, compton and i3lock
```
sudo apt install i3blocks feh compton i3lock
```
- Move i3 and i3blocks config
