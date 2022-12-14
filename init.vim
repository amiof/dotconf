call plug#begin('~/.vim/plugins')
Plug 'windwp/nvim-autopairs' 
Plug 'lifepillar/vim-gruvbox8'
Plug 'ayu-theme/ayu-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'windwp/nvim-autopairs'
Plug 'tpope/vim-commentary'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


"==============lua configs ==========
"config for treesitter 

lua << EOF
require('nvim-treesitter.configs').setup {
ensure_installed = {&quotjavascript&quot, &quottypescript&quot, &quotcss&quot, &quothtml&quot, &quotpython&quot, &quotrust&quot},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
require("nvim-autopairs").setup()
require("colorizer").setup()
require("bufferline").setup()
EOF




"=============configs vim ========
set cursorline
set termguicolors
set signcolumn=yes
set nowrap
set number
set scrolloff=7
set sidescrolloff=20
set splitbelow
set splitright
set hidden
inoremap jk <ESC>
set bg=dark

"=============backgroundTramsparent====================
let t:is_transparent = 1
function! Toggle_transparent_background()
  if t:is_transparent == 0
    set bg=dark
    let t:is_transparent = 1
  else
    hi Normal guibg=NONE ctermbg=NONE
    let t:is_transparent = 0
  endif
endfunction
nnoremap <leader>tt :call Toggle_transparent_background()<CR>

"======page splite <leader> is \
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>hs :split<CR>
nmap <leader>tn :set nu!<CR>
"======================shortcute========================================
"copy and paste
vmap <leader>y &quot+y
nmap <leader>y &quot+y
nmap <leader>p &quot+p
"move code up or down 
vnoremap K :move '<-2<CR>gv-gv
vnoremap J :move '>+1<CR>gv-gv
"resize screens 
nnoremap <C-Up> :resize +2<CR>
nnoremap <C-Down> :resize -2<CR>
nnoremap <C-Left> :vertical resize +2<CR>
nnoremap <C-Right> :vertical resize -2<CR>

"clear hilight search 
nnoremap <leader>h :set hlsearch!<CR>

"move code selected easyer
vnoremap > >gv
vnoremap < <gv
"switch between buffers 
nnoremap <Leader>b :BufferLineCyclePrev<CR>
nnoremap <Leader>n :BufferLineCycleNext<CR>
nnoremap <Leader>d :bd<CR>

"=================plugin configs===================
"color theme config for plugin ayu
let ayucolor="mirage"
colorscheme ayu
"commetn config 
nmap <leader>c gcc
vmap <leader>c gc
"search filese fzf 
nnoremap <leader>f :Files<CR>
"confit for nvim tree 
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ]
let g:nvim_tree_show_icons = {
    \ 'git': 0,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 1,
    \ }
let g:nvim_tree_auto_open = 1
let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_follow = 1
let g:nvim_tree_hide_dotfiles = 1
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_tab_open = 0

nnoremap <leader>e :NvimTreeToggle<CR>

"end config 

"coc plug strart
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
