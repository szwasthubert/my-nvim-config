:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab

" =================== INSTALLED PLUGINS ==========================


call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/kyazdani42/nvim-tree.lua'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/glepnir/dashboard-nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'sangdol/mintabline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/liuchengxu/vim-clap'

call plug#end()



" =================== POST INSTALL CONFIGS ======================


:luado require("nvim-tree").setup()
:luafile $HOME/.config/nvim/luaconf.lua
:set completeopt-=preview
:colorscheme one-dark


" 
let g:coc_global_extensions = [
            \ 'coc-json',
			\ 'coc-pyright',
			\ 'coc-go',
            \ 'coc-css',
            \ ]


let g:airline_powerline_fonts = 1

" KEY BINDINGS

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap ff :Telescope find_files<CR>
noremap fg :Telescope live_grep<CR>
noremap fb :Telescope git_branches<CR>
noremap <F8> :TagbarToggle<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
