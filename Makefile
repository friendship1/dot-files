.PHONY: all
all: install stow

.PHONY: install
install:
	sh install.sh

.PHONY: stow
stow:
	@stow -t ~ tmux zsh vim
	@stow -t ~/.config/nvim nvim

.PHONY: unstow
unstow:
	@stow -D -t ~ tmux zsh vim
	@stow -D -t ~/.config/nvim nvim
