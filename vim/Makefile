.DEFAULT_GOAL := install
.DELETE_ON_ERROR:
ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

CACHE = $(HOME)/.cache
SHARE = $(HOME)/.local/share

NEOVIM_DIRECTORY = $(HOME)/.config/nvim
NEOVIM_CONFIG = $(NEOVIM_DIRECTORY)/init.vim
NEOVIM_CACHE = $(CACHE)/nvim

VIM_CONFIG = $(HOME)/.vimrc

$(NEOVIM_CACHE):
	mkdir -p $(NEOVIM_CACHE)

$(NEOVIM_CONFIG): | $(NEOVIM_DIRECTORY)  $(NEOVIM_CACHE)
	ln -snf $(ROOT_DIR)/nvimrc $(NEOVIM_CONFIG)

$(NEOVIM_DIRECTORY):
	mkdir -p $(NEOVIM_DIRECTORY)

$(VIM_CONFIG):
	ln -snf $(ROOT_DIR)/vimrc $(VIM_CONFIG)

.PHONY: install
install: | $(NEOVIM_CONFIG) $(VIM_CONFIG)

.PHONY: upgrade
upgrade: | install

.PHONY: clean
clean:
	rm -f $(HOME)/.ctags
	rm -f $(HOME)/.viminfo
	rm -f $(HOME)/.vimoutlinerrc
	rm -f $(HOME)/.vimpagerrc
	#
	rm -fr $(SHARE)/dein.nvim
	rm -fr $(SHARE)/dein.vim
	rm -fr $(SHARE)/nvim
	rm -fr $(SHARE)/vim
	#
	rm -f $(HOME)/.vim
	rm -fr $(NEOVIM_DIRECTORY)
	#
	rm -f $(VIM_CONFIG)
	rm -f $(NEOVIM_CONFIG)
	#
	rm -fr $(CACHE)/vim
	rm -fr $(NEOVIM_CACHE)
