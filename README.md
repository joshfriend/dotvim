# .vim

The `vim` plugins and configuration that I use.

## Installation
Run this to install the plugins and configuration

    $ curl http://raw.githubusercontent.com/joshfriend/dotvim/master/install.sh | bash
    $ vim +PluginInstall +qall

## Notes
`vim-powerline` requires a patched font, several of which can be obtained
[here](https://github.com/Lokaltog/powerline-fonts).

Mac users will want to use `macvim` from homebrew instead of the system `vim`.
This is because the powerline fonts required for `vim-airline` don't seem to
work properly in system `vim`. To install `macvim`:

    $ brew install macvim --override-system-vim

