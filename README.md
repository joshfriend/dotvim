# .vim

The `vim` plugins and configuration that I use.

## Installation
Run the following commands to install the plugins and configuration

```bash
git clone http://github.com/joshfriend/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
cd ~/.vim
git submodule update --init
```

## Updating
Just run this in your `~/.vim` folder:

    $ git submodule foreach git pull origin master

