# Dotfiles
These are my dotfiles for arch systems. The dotfiles include configuration for:
* Alacritty
* Bash (.bashrc)
* Tmux
* Neovim
* Starship

## Usage
1. Clone this repository to your home directory. It should be named "dotfiles".
2. Back upp all configuration files that are going to be restored using *stow*.
3. Install stow using the following command:
```bash
# pacman -S stow
```
4. Move into the "dotfiles" directory.
5. Remove all old configuration files.
6. Restore the config files in this directory using the following command:
```bash
~/dotfiles $ stow .
```
