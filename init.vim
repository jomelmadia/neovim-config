call plug#begin('~/.config/nvim/plugged')
	"Nertree
  Plug 'preservim/nerdtree'
  
  " CSS color preview
  Plug 'ap/vim-css-color' 

  " COLOR SCHEMES
  Plug 'crusoexia/vim-monokai'
  Plug 'shaunsingh/solarized.nvim'
  Plug 'morhetz/gruvbox'  
  Plug 'wojciechkepka/vim-github-dark'

  " git command for vim   
  Plug 'tpope/vim-fugitive'

  " surround
  Plug 'tpope/vim-surround'
 
  " vim rails 
  Plug 'tpope/vim-rails'
  
  " Show git changes in a file 
  Plug 'airblade/vim-gitgutter'

  Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }  
  Plug 'junegunn/fzf.vim'

  " gcc to comment
  Plug 'tomtom/tcomment_vim'

  " Html autocomplete
  Plug 'mattn/emmet-vim'

  "typescipt highligthing   
  Plug 'leafgarland/typescript-vim'    

  " vim csv editor
  Plug 'chrisbra/csv.vim'

call plug#end()

" color scheme
" colorscheme monokai
colorscheme gruvbox

set relativenumber
set number
set clipboard=unnamedplus

" set tabs 2
set tabstop=2

" expand tabs to spaces 
set expandtab

" set width indention
set shiftwidth=2

" show match
set showmatch

" set line cursor
set cursorline

" enable mouse 
set mouse=a

"no wrap
set nowrap

" highlight search
set hlsearch

"status line
set laststatus=2

set encoding=UTF-8

syntax on
filetype on

" Personal VIM Keymapping 
noremap <leader>q :q<cr>
noremap <leader>w :w<cr>
noremap <leader><space> :noh<cr>
noremap <leader>r :so $MYVIMRC <cr>
noremap <silent> <C-f> :Files<CR>
noremap <leader>gst :Git<CR>
noremap <leader>gl :Gclog<CR>
noremap <leader>gcm :Git commit<CR>
noremap <leader>gb :Git blame<CR>
noremap <leader>gp :Git push origin HEAD<CR>
"

" Set cursor line bg, change this if color scheme is installed 
" hi CursorLine cterm=NONE ctermbg=242 

" Python Specific setup
"tabs for python
autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4

" tabs for javascript
autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4

" emmet leader key
let g:user_emmet_leader_key=','

let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

" FZF
"nmap <c-p> :FZF!<CR>
noremap <c-p> :GFiles<CR>
" noremap <c-\> :Rg<CR>
noremap <c-\> :Rg<CR>

" Make sure to install ripgrep 
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
