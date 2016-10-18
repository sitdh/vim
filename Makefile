init:
	@ln -fs ~/.vim/vimrc ~/.vimrc
	@make update

update:
	@git submodule update --init --recursive
