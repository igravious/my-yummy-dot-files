" https://www.reddit.com/r/vim/comments/49uag0/vundle_vs_pathogen_vs/

" https://github.com/tpope/vim-pathogen
" execute pathogen#infect()
" gonna use vim-plug instead

" Specify a directory for plugins
" https://github.com/junegunn/vim-plug
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

Plug 'https://github.com/igravious/unicode.vim'

Plug 'https://github.com/posva/vim-vue'

" Initialize plugin system
call plug#end()

syntax on
" how to do this only for Ruby?
" https://stackoverflow.com/questions/1562633/setting-vim-whitespace-preferences-by-filetype
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

set noexpandtab

set background=dark

set hlsearch

" screen is plently wide to show numbers
set number

" associate *.hbs with html filetype
au BufRead,BufNewFile *.hbs setfiletype html

if &diff
    " diff mode
    set diffopt+=iwhite
endif

" set paste

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2
autocmd FileType vue setlocal shiftwidth=2 tabstop=2
