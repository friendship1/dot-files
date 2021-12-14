.PHONY: all
all: pre nvim tmux zsh backup gcm stow

.PHONY: install
install:
	sh install.sh

.PHONY: stow
stow:
	@stow -t ~ tmux zsh vim
	@stow -t ~/.config/nvim nvim
	@stow -t ~/.config/git git

.PHONY: unstow
unstow:
	@stow -D -t ~ tmux zsh vim
	@stow -D -t ~/.config/nvim nvim
	@stow -D -t ~/.config/git git

.PHONY: backup
backup:
	sh backup.sh

.PHONY: gcm
	sh install-gcm.sh

.PHONY: nvim
	sh install-nvim.sh

.PHONY: tmux
	sh install-tmux.sh

.PHONY: zsh
	sh install-zsh.sh

.PHONY: pre
	sh install-pre.sh
