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

## Notes
`vim-powerline` requires a patched font, several of which can be obtained [here](https://github.com/Lokaltog/powerline-fonts).

Mac users will want to use `macvim` from homebrew instead of the system `vim`. This is because the powerline fonts required for `vim-airline` don't seem to work properly in system `vim`. To install `macvim`:

    $ brew install macvim --override-system-vim

