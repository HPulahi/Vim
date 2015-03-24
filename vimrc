set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-ragtag'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'vim-ruby/vim-ruby'
" Snipmate Plugins
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim' 
Plugin 'garbas/vim-snipmate' 
Plugin 'honza/vim-snippets' 
" JS Plugins
Plugin 'kchmck/vim-coffee-script'

" Testing Plugins
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-dispatch'
Bundle 'Keithbsmiley/rspec.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Set the Map Leader
:let mapleader=','

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" RSpec Plugin
let g:rspec_command = "Dispatch rspec {spec}"
let g:rspec_runner = "os_x_iterm"

autocmd BufNewFile,BufRead *_foo.rb set syntax=rspec


" Solarized color scheme
syntax enable
set background=dark
colorscheme solarized

set expandtab
set shiftwidth=2
set softtabstop=2
set number         " Add Line Numbers
" Airline

let g:airline#extensions#tabline#enabled = 1 "Tab line
set laststatus=2
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  let g:airline_symbols.space = "\ua0"

"  let g:airline_left_sep = '▶'
"  let g:airline_right_sep = '◀'
"  let g:airline_symbols.linenr = '␊'
"  let g:airline_symbols.linenr = '␤'
"  let g:airline_symbols.linenr = '¶'
"  let g:airline_symbols.branch = '⎇'
"  let g:airline_symbols.paste = 'ρ'
"  let g:airline_symbols.paste = 'Þ'
"  let g:airline_symbols.paste = '∥'
"  let g:airline_symbols.whitespace = 'Ξ'

  let g:airline_enable_branch=1
  let g:airline_detect_whitespace=0
  let g:airline_powerline_fonts=1
  set encoding=utf-8

set t_Co=256
