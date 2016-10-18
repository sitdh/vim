init:
	@ln -fs ~/.vim/vimrc ~/.vimrc
	make -B update

update:
	@git submodule update --init --recursive
