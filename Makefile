init:
	@ln -fs ~/.vim/vimrc ~/.vimrc
	@make update
	@make plugin

plugin:
	@npm install -g eslint
	@npm install -g babel-eslint
	@npm install -g eslint-plugin-react

update:
	@git submodule update --init --recursive
