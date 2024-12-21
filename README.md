# ✨ dotfiles
**Updated 2024-12-12 08:50**
<br>
These are my current dotfiles!
### 📂 Currently  includes:
💜 Neovim
<br>
💜 Tmux
<br>
💜 .zshrc
<br>
💜 Oh My Zsh, Powerlevel10k
### 🗄️ Installation:
**Makes use of GNU Stow.**
**Make sure to also install a Nerd Font like JetBrainsMono NF**
```bash
# If not already installed:
sudo pacman -Syy && sudo pacman -S stow tmux wget fastfetch --noconfirm
# or
sudo apt update && sudo apt install stow tmux wget -y
wget https://github.com/fastfetch-cli/fastfetch/releases/download/2.32.1/fastfetch-linux-amd64.deb
sudo dpkg -i fastfetch-linux-amd64.deb
rm fastfetch-linux-amd64.deb

wget https://github.com/neovim/neovim/releases/download/v0.10.3/nvim-linux64.tar.gz
tar xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz
mkdir -p ~/.local/bin
mv nvim-linux64 ~/.local/bin
ln -s ~/.local/bin/nvim-linux64/bin/nvim ~/.local/bin/nvim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone git@github.com:OliverMarcusson/dotfiles ~/
cd ~/dotfiles 
stow .
cd 
rm setup.py
exec zsh
clear
```
