.PHONY: all
all: pre nvim tmux zsh fzf backup stow

.PHONY: install
install:
	sh install.sh

.PHONY: stow
stow:
	@stow -t ~ tmux zsh vim
	@stow -t ~/.config/nvim nvim
#	@stow -t ~/.config/git git

.PHONY: unstow
unstow:
	@stow -D -t ~ tmux zsh vim
	@stow -D -t ~/.config/nvim nvim
#	@stow -D -t ~/.config/git git

.PHONY: backup
backup:
	sh backup.sh

.PHONY: gcm
gcm:
	sh install-gcm.sh

.PHONY: nvim
nvim:
	sh install-nvim.sh

.PHONY: tmux
tmux:
	sh install-tmux.sh

.PHONY: zsh
zsh:
	sh install-zsh.sh

.PHONY: pre
pre:
	sh install-pre.sh

.PHONY: fzf
fzf:
	sh install-fzf.sh
