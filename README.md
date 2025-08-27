# Neovim
I am using Neovim with vim-plug, along with vim-lsp and related plugins.

### Setup

#### Instal vim-plug
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

#### Install all plugins 
```
:PlugInstall
```

#### Install LSP server
```
# For go
go install golang.org/x/tools/gopls@latest 

```

#### How to add new plugin
1. Add plugin 
2. set config if it have
3. run `:PlugInstall`
4. install lsp server like `pylsp` and `gopls` in you machine

#### if changed the *.vim file then reload it by reopen or run this command
```
:source $MYVIMRC
```
#### for removed thoese plugins who are not in used
```
:PlugClean

```
