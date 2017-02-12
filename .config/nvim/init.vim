if &compatible
  set nocompatible
endif

let $CACHE = expand('~/.cache')

if !isdirectory(expand($CACHE))
  call mkdir(expand($CACHE), 'p')
endif

let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let s:toml = '~/.config/nvim/dein.toml'
  call dein#load_toml(s:toml, {'lazy': 0})
  let s:lazy_toml = '~/.config/nvim/dein_lazy.toml'
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  if has('nvim')
    let s:neovim_toml = '~/.config/nvim/neovim.toml'
    call dein#load_toml(s:neovim_toml, {'lazy': 0})
  endif

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

set ruler
set number

set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4

set sh=fish
filetype indent on
syntax on

runtime! keymap.rc.vim

