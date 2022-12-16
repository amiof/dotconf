call plug#begin('~/.vim/plugins')
Plug 'windwp/nvim-autopairs' 
Plug 'lifepillar/vim-gruvbox8' "theme 
Plug 'ayu-theme/ayu-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
Plug 'tpope/vim-commentary'
Plug 'norcalli/nvim-colorizer.lua' "colrizer for colorcode
Plug 'akinsho/nvim-bufferline.lua'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'p00f/nvim-ts-rainbow'
Plug 'hoob3rt/lualine.nvim'
Plug 'nvim-lua/plenary.nvim' "diff git 
Plug 'lewis6991/gitsigns.nvim' "diff git 
Plug 'olimorris/onedarkpro.nvim' "theme one dark
Plug 'EdenEast/nightfox.nvim' " Vim-Plug
Plug 'windwp/nvim-ts-autotag'    " auto close tagPlug 
Plug 'lukas-reineke/indent-blankline.nvim' "liner line 
Plug 'mg979/vim-visual-multi', {'branch': 'master'} "multi select 
Plug 'mattn/emmet-vim'
call plug#end()

"==============lua configs =========="

lua << EOF
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
-- require("nvim-autopairs").setup()
require("colorizer").setup()
require('bufferline').setup ()
 
--diff git 
require("gitsigns").setup({
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '▎', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '▎', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '▎', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '▎', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '▎', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
})
--the config for botten bar 
require("lualine").setup({
    options= {
     theme= 'ayu_mirage'
    }
})

--one dark pro theme 


require("onedarkpro").setup({
  colors = {}, -- Override default colors or create your own
  highlights = {}, -- Override default highlight groups or create your own
  filetypes = { -- Override which filetype highlight groups are loaded
    -- See the 'Configuring filetype highlights' section for the available list
  },
  plugins = { -- Override which plugin highlight groups are loaded
    -- See the 'Supported plugins' section for the available list
  },
  styles = { -- For example, to apply bold and italic, use "bold,italic"
    types = "NONE", -- Style that is applied to types
    numbers = "NONE", -- Style that is applied to numbers
    strings = "NONE", -- Style that is applied to strings
    comments = "NONE", -- Style that is applied to comments
    keywords = "NONE", -- Style that is applied to keywords
    constants = "NONE", -- Style that is applied to constants
    functions = "NONE", -- Style that is applied to functions
    operators = "NONE", -- Style that is applied to operators
    variables = "NONE", -- Style that is applied to variables
    conditionals = "NONE", -- Style that is applied to conditionals
    virtual_text = "NONE", -- Style that is applied to virtual text
  },
  options = {
    bold = true, -- Use bold styles?
    italic = true, -- Use italic styles?
    underline = true, -- Use underline styles?
    undercurl = true, -- Use undercurl styles?

    cursorline = false, -- Use cursorline highlighting?
    transparency = false, -- Use a transparent background?
    terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
    highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
  }
})
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,

}
    

local configs = require("nvim-treesitter.configs")   
configs.setup {     
   ...,
  rainbow = {
	enable = true,
	extended_mode = false,
  },
   autotag = {
	enable = true,
  },


}




require("nvim-treesitter.configs").setup({

    --ensure_install="all", 
   ensure_installed = "all",   
  sync_install = false,   
  ignore_install = {}, -- List of parsers to ignore installing     
  highlight = {       
    enable = true, -- false will disable the whole extension       
    disable = { "yaml" }, -- list of language that will be disabled       
    additional_vim_regex_highlighting = true,         
    }})


EOF


"=============configs vim ========"
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
:set mouse=a 
set mousemoveevent
let mapleader = ";"
inoremap jk <ESC>
"set bg=dark"
"=============backgroundTramsparent===================="
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

"======page splite <leader> is \ "
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>hs :split<CR>
nmap <leader>tn :set nu!<CR>
"======================shortcute======================================== "
"copy and paste "
vmap <leader>y "+y
nmap <leader>y "+y
nmap <leader>p "+p
"move code up or down " 
vnoremap K :move '<-2<CR>gv-gv
vnoremap J :move '>+1<CR>gv-gv
"resize screens  "
nnoremap <A-Up> :resize +2<CR>
nnoremap <A-Down> :resize -2<CR>
nnoremap <A-Left> :vertical resize +2<CR>
nnoremap <A-Right> :vertical resize -2<CR>

"clear highlight search "
nnoremap <leader>h :set hlsearch!<CR>

"move code selected easyer"
vnoremap > >gv
vnoremap < <gv
"switch between buffers "
nnoremap <Leader>b :BufferLineCyclePrev<CR>
nnoremap <Leader>n :BufferLineCycleNext<CR>
nnoremap <Leader>d :bd<CR>

"=================plugin configs not lua=================== "
"color theme config for plugin ayu "
let ayucolor="mirage"
"colorscheme ayu
colorscheme  onedark_vivid
"comments config "
nmap <leader>c gcc
vmap <leader>c gc
"search files fzf " 
nnoremap <leader>f :Files<CR>
"use silver search in fzf you must install silversearch-ag
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
"confit for nvim tree " 
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

" lua << EOF 

" require("nvim-treesitter.configs").setup ({
" 	 highlight = {},
"   ...,
"  rainbow = {
"     enable = true,
"      disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
"    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
"    max_file_lines = nil, -- Do not enable for files with more than n lines, int
"      colors = {}, -- table of hex strings
"    termcolors = {} -- table of colour name strings
"  }
" })






" EOF 
"====================================coc plug config ================"
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

"move in window white alt + j k l h
" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l



"==============config terminal=========================== 
" 
tnoremap <ESC> <C-\><C-t>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10 
endfunction 
nnoremap <C-t> :call OpenTerminal()<CR>


let g:user_emmet_leader_key=','
