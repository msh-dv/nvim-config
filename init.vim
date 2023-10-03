syntax on 
set bg=dark
set nowrap
set sw=2 
set number
set cursorline 
set termguicolors
set ttyfast
set mouse=
set noswapfile
set numberwidth=1 
set clipboard=unnamed 
set ruler
set encoding=UTF-8
set showmatch
set laststatus=2
set noshowmode
set hidden
set splitright 
set splitbelow


call plug#begin()

"stats/wakatime
Plug 'wakatime/vim-wakatime'
"discord/time
Plug 'andweeb/presence.nvim'

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'morhetz/gruvbox'
Plug 'habamax/vim-gruvbit'
Plug 'sainnhe/sonokai'
"Plug 'rafi/awesome-vim-colorschemes'
Plug 'huyvohcmc/atlas.vim'
Plug 'kooparse/vim-color-desert-night'
Plug 'ewilazarus/preto'
Plug 'alexanderjeurissen/lumiere.vim'
Plug 'Jorengarenar/vim-darkness'
Plug 'catppuccin/nvim'
Plug 'EdenEast/nightfox.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'tomasr/molokai'
Plug 'nordtheme/vim'
Plug 'rebelot/kanagawa.nvim'
Plug 'rakr/vim-one'
Plug 'w0ng/vim-hybrid'
Plug 'joshdick/onedark.vim'

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'olimorris/onedarkpro.nvim'
Plug 'foxbunny/vim-amber'
Plug 'sainnhe/everforest'
Plug 'ribru17/bamboo.nvim'
Plug 'ayu-theme/ayu-vim'
Plug 'thedenisnikulin/vim-cyberpunk'
Plug 'nvim-tree/nvim-tree.lua'

Plug 'sainnhe/gruvbox-material'
Plug 'ryanoasis/vim-devicons'
Plug 'her/synicons.vim'
Plug 'ap/vim-css-color'
Plug 'doums/darcula'
Plug 'Mcmartelle/vim-monokai-bold'
Plug 'tomasiser/vim-code-dark'
Plug 'lifepillar/vim-gruvbox8'
Plug 'srcery-colors/srcery-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'projekt0n/github-nvim-theme'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }

Plug 'folke/zen-mode.nvim'

Plug 'nathanaelkane/vim-indent-guides' 
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'nvim-tree/nvim-web-devicons'

Plug 'turbio/bracey.vim'
Plug 'mattn/emmet-vim'

Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Game
Plug 'johngrib/vim-game-code-break'

Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()


colorscheme gruvbox

let mapleader=" "   "Letra lider(espacio)
nmap <Leader>nt :NvimTreeFindFile<CR>
nmap <Leader>nr :NvimTreeRefresh<CR>
nmap <Leader>nc :NvimTreeToggle<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>qq :q!<CR>
nmap <Leader>ww :wq<CR>
nmap <Leader>, :tabprevious<CR>
nmap <Leader>. :tabnext<CR>
nmap <Leader>di :ALEDisable<CR>
nmap <Leader>dc :CocDisable<CR>

nmap <Leader>vv :!vivaldi-stable index.html<CR>

nmap <Leader>P :PlugInstall<CR>
nmap <Leader>T :ToggleTerm direction=horizontal size=15<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>A :AirlineToggle<CR>
nmap <Leader>Z :ZenMode<CR>
nmap <Leader>N :tabnew file<CR>
"Quitar el marcado despues de una busqueda
nmap <Leader>s :noh<CR>
"Regresar a la marca pasada
nmap <Leader>rr ``<CR>
"Elegir una marca
nmap <Leader>r `

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Auto cierre de caracteres
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>0
inoremap [ []<Esc>
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
            \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


"Desarrollo web emacs
let g:user_emmet_leader_key=',' "Doble coma para completar la plantilla
let g:tagalong_verbose = 1


lua << END


require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',                                       
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

require ("toggleterm").setup({
 size = 20,
 open_mapping = [[<c-\>]],
 hide_numbers = true,
 shade_filetypes = {},
 shade_terminals = true,
 shading_factor = 2,
 start_in_insert = true,
 insert_mappings = true,
 persist_size = true,
 direction = "float",
 close_on_exit = true,
 shell = vim.o.shell,
 float_opts = {
  border = "curved",
  winblend = 0,
  highlights = {
   border = "Normal",
   background = "Normal",
  },
 },
})

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')



require("bufferline").setup{}
require("nvim-tree").setup{
 actions = {
        open_file = {
            quit_on_open = true,
        },
    },
view = {
  width = 30,
},
renderer = {
  group_empty = true,
},
filters = {
  dotfiles = true,
},
\ }


require("zen-mode").setup({
window = {
  width = .95 -- width will be 85% of the editor width
}
})

require ("presence").setup({
        --YOUR DISCORD CONFIG
})

END
