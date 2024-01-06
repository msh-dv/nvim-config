syntax on 
set bg=dark
set nowrap
set sw=2 
set number
set termguicolors
set cursorline
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

call plug#begin('~/.local/share/nvim/plugged')
"Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

"stats/wakatime
Plug 'wakatime/vim-wakatime'
"discord/time
Plug 'andweeb/presence.nvim'

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'morhetz/gruvbox'
Plug 'habamax/vim-gruvbit'
Plug 'sainnhe/sonokai'
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
Plug 'ryanoasis/vim-devicons'
Plug 'her/synicons.vim'
Plug 'ap/vim-css-color'

Plug 'folke/zen-mode.nvim'

"scroll fluido"
Plug 'karb94/neoscroll.nvim'

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'

Plug 'turbio/bracey.vim'
Plug 'mattn/emmet-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Dashboard
Plug 'nvimdev/dashboard-nvim'
"Tagbar
Plug 'preservim/tagbar'
"Comentarios
Plug 'tpope/vim-commentary'
"Surround
Plug 'kylechui/nvim-surround'
"Git
Plug 'tpope/vim-fugitive'

"Game
Plug 'johngrib/vim-game-code-break'
Plug 'alec-gibson/nvim-tetris'
Plug 'seandewar/killersheep.nvim'

Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

"Tema
colorscheme gruvbox

let mapleader=" "   "Letra lider(espacio)
"Atajos personalizados
nmap <Leader>nt :NvimTreeFindFile<CR>
nmap <Leader>nr :NvimTreeRefresh<CR>
nmap <Leader>nc :NvimTreeToggle<CR>
nmap <Leader>t :TagbarToggle<CR>
nmap <Leader>tn :TagbarJumpNext<CR>
nmap <Leader>tp :TagbarJumpPrev<CR>
nmap <Leader>ts :TagbarShowTag<CR>


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

"Cierre de caracteres
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


"Desarrollo web emmet
let g:user_emmet_leader_key=',' "Doble coma para completar la plantilla
let g:tagalong_verbose = 1


lua << END

require('killersheep').setup()

require('nvim-surround').setup()

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
    lualine_x = {'filetype'},
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
  tabline = {
    lualine_a = {'buffers'},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'tabs'}
  },
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

require("neoscroll").setup({

})

local t = {}
-- Syntax: t[keys] = {function, {function arguments}}
t['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '230'}}
t['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '230'}}
t['<C-b>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '300'}}
t['<C-f>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '300'}}
t['<C-y>'] = {'scroll', {'-0.10', 'false', '100'}}
t['<C-e>'] = {'scroll', { '0.10', 'false', '100'}}
t['zt']    = {'zt', {'200'}}
t['zz']    = {'zz', {'200'}}
t['zb']    = {'zb', {'200'}}

require('neoscroll.config').set_mappings(t)

require("ibl").setup({
exclude = {
  filetypes ={"dashboard"}
  }
})

require("dashboard").setup({
    theme = 'hyper',
    config = {
      header = {
  "",
  "    _   __ ______ ____  _    __ ____ __  ___",
  "   / | / // ____// __ \\| |  / //  _//  |/  /",
  "  /  |/ // __/  / / / /| | / / / / / /|_/ / ",
  " / /|  // /___ / /_/ / | |/ /_/ / / /  / /  ",
  "/_/ |_//_____/ \\____/  |___//___//_/  /_/   ",
  "                                            " ,
  ""},
      disable_move ={true},
      shortcut = {
            { desc = '󰊳 Update', group = '@property', action = 'PlugUpdate', key = 'u' },
            {
              icon = ' ',
              icon_hl = '@variable',
              desc = 'Files',
              group = 'Label',
              action = 'Files',
              key = 'f',
            },
          },
	  packages = {false},
	  project = {enable = false},
	  mru = {limit = 7},
      footer = {}
    },
  })


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
  border = "rounded",
  winblend = 0,
  width = 88,
  height = 28,
  winblend = 15,
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
  indent_markers = {
    enable = false;
  }
  },
filters = {
  dotfiles = false,
},
\ }

require("zen-mode").setup({
window = {
  width = .95 -- width will be 85% of the editor width
}
})

require ("presence").setup({
    auto_update         = true,                       
    neovim_image_text   = "",      
    main_image          = "neovim",                   
    client_id           = "",       
    log_level           = nil,                        
    debounce_timeout    = 10,                         
    enable_line_number  = false,                      
    blacklist           = {},                         
    buttons             = true,                       
    file_assets         = {},                         
    show_time           = true,                       

    -- Rich Presence text options
    editing_text        = "Editing %s",               
    file_explorer_text  = "Browsing %s",              
    git_commit_text     = "Committing changes",       
    plugin_manager_text = "Managing plugins",         
    reading_text        = "Reading %s",               
    workspace_text      = "Working on %s",            
    line_number_text    = "Line %s out of %s",        
})
END
