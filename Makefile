DOTFILES = $(PWD)
all:: git vim zsh tmux

git::
	@ln -fs $(DOTFILES)/git/gitignore       ${HOME}/.gitignore
	@ln -fs $(DOTFILES)/git/gitconfig       ${HOME}/.gitconfig
	@echo Git is symlinked.

vim::
	@ln -fs $(DOTFILES)/vim/vimrc        ${HOME}/.vimrc
	@ln -fns $(DOTFILES)/vim/vim         ${HOME}/.vim
	@echo Vim is symlinked.

emacs::
	@ln -fs $(DOTFILES)/emacs/emacs.el	${HOME}/.emacs
	@ln -fns $(DOTFILES)/emacs					${HOME}/.emacs.d
	@echo Emacs is symlinked.

zsh::
	@ln -fs $(DOTFILES)/zsh/zshrc ${HOME}/.zshrc
	@ln -fs $(DOTFILES)/zsh/zshalias ${HOME}/.zshalias
	@ln -fs $(DOTFILES)/zsh/zshenv ${HOME}/.zshenv
	@ln -fns $(DOTFILES)/zsh/oh-my-zsh ${HOME}/.oh-my-zsh
	@echo ZSH is symlinked.

tmux::
	@ln -fs $(DOTFILES)/tmux/tmux.conf ${HOME}/.tmux
	@echo tmux is symlinked.