" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1


set number
syntax on
set autoindent
set tabstop=8
set noexpandtab
set showmode
set ai
filetype indent on
"set smartindent
autocmd BufRead,BufWritePre *.sh normal gg=G
set nocompatible
filetype off
set nowritebackup


set nu
"color koehler
"filetype on
filetype plugin indent on
if has("syntax")
	syntax on

colorscheme desert

hi Normal guibg=NONE ctermbg=NONE
endif

hi Normal guibg=NONE ctermbg=NONE

autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE

" Configuración específica para archivos .c
autocmd FileType c,cpp setlocal noexpandtab tabstop=8 shiftwidth=8

" Configuración específica para archivos .py
autocmd FileType python setlocal noexpandtab tabstop=8 shiftwidth=8

