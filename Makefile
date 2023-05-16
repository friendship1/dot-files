.PHONY: all
all: server edge vscode vnc insync flatpak pre2

.PHONY: server
server: pre1 tmux zsh backup stow

.PHONY: stow
stow:
	@stow -t ~ tmux zsh vim
	mkdir -p ~/.config/nvim
	mkdir -p ~/.config/git
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

.PHONY: pre1
pre1:
	sh install-pre1.sh

.PHONY: pre2
pre2:
	sh install-pre2.sh

.PHONY: tmux
tmux:
	sh install-tmux.sh

.PHONY: zsh
zsh:
	sh install-zsh.sh

.PHONY: vscode
vscode:
	sh install-vscode.sh

.PHONY: edge
edge:
	sh install-edge.sh

.PHONY: vnc
vnc:
	sh install-vnc.sh

.PHONY: insync
insync:
	sh install-insync.sh

.PHONY: flatpak
flatpak:
	sh install-flatpak.sh