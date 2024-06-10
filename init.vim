" nvim config file
" https://github.com/msh-dv/nvim-config

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

"themes
Plug 'ellisonleao/gruvbox.nvim'
Plug 'fcpg/vim-fahrenheit'
Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}
Plug 'sainnhe/edge'
Plug 'p00f/alabaster.nvim'
Plug 'owickstrom/vim-colors-paramount'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/sonokai'
Plug 'projekt0n/github-nvim-theme'
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
Plug 'her/synicons.vim'
Plug 'ap/vim-css-color'

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'folke/zen-mode.nvim'

"markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

"stats/wakatime
Plug 'wakatime/vim-wakatime'

"discord/time
Plug 'andweeb/presence.nvim'

Plug 'nvim-treesitter/nvim-treesitter'

"smooth scroll"
Plug 'karb94/neoscroll.nvim'

"web
Plug 'turbio/bracey.vim'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/loremipsum'

"syntax
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"dashboard
Plug 'nvimdev/dashboard-nvim'

"tagbar
Plug 'preservim/tagbar'

"comments
Plug 'tpope/vim-commentary'

"surround
Plug 'kylechui/nvim-surround'

"git
Plug 'tpope/vim-fugitive'

"games
Plug 'johngrib/vim-game-code-break'
Plug 'alec-gibson/nvim-tetris'
Plug 'seandewar/killersheep.nvim'

"files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"term
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

call plug#end()


"markdown-preview browser
let g:mkdp_browser = 'google-chrome-stable'
let g:mkdp_auto_start = 1
let g:mkdp_theme = 'dark'

"bracey browser
let g:bracey_browser_command = 'google-chrome-stable' "set browser to google-chrome

" colorscheme onedark

" theme config for gruvbox-material 
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_foreground = 'original'          "material / mix / original 
let g:gruvbox_material_background = 'hard'         "hard / medium / soft
let g:gruvbox_material_transparent_background = 0


colorscheme gruvbox-material 


" theme config for everforest

" let g:everforest_background = 'hard'
" let g:everforest_better_performance = 1

" colorscheme everforest

" theme config for sonokai 

" let g:sonokai_style = 'maia'
" let g:sonokai_better_performance = 1

" colorscheme sonokai 


" theme config for edge 

" let g:edge_dim_foreground = 0
" let g:edge_style = 'aura'
" let g:edge_better_performance = 1

" colorscheme edge 

"emmet
let g:user_emmet_leader_key=',' "Doble coma para completar la plantilla
let g:tagalong_verbose = 1

let mapleader=" "   "Letra lider(espacio)

"keymaps
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

nmap <Leader>dc :CocDisable<CR>

nmap <Leader>p :PlugInstall<CR>
nmap <Leader>P :CocCommand prettier.formatFile<CR>
nmap <Leader>T :ToggleTerm direction=horizontal size=15<CR>
nmap <Leader>ft :ToggleTerm<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>A :AirlineToggle<CR>
nmap <Leader>Z :ZenMode<CR>
nmap <Leader>N :tabnew file<CR>

nmap <Leader>G :!google-chrome-stable index.html<CR>
nmap <Leader>ss :!sass -w css/style.scss css/style.css<CR>

nmap <Leader>s :noh<CR>

nmap <Leader>rr ``<CR>

nmap <Leader>r `

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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

lua << END
require('gruvbox').setup({
  terminal_colors = true, 
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = true,
  invert_intend_guides = false,
  inverse = true, 
  contrast = "hard", 
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

require('nvim-web-devicons').setup()

require('killersheep').setup()

require('nvim-surround').setup()

require("neoscroll").setup()

local t = {}
-- Syntax: t[keys] = {function, {function arguments}}
t['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '230'}}
t['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '230'}}
t['<C-b>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '200'}}
t['<C-f>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '200'}}
t['<C-y>'] = {'scroll', {'-0.10', 'false', '100'}}
t['<C-e>'] = {'scroll', { '0.10', 'false', '100'}}
t['zt']    = {'zt', {'200'}}
t['zz']    = {'zz', {'200'}}
t['zb']    = {'zb', {'200'}}

require('neoscroll.config').set_mappings(t)

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
      tabline=1000,
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

require("nvim-tree").setup({

actions = {
  open_file = {
    quit_on_open = true,
  },
},

view = {
  centralize_selection = true,
  cursorline = true,
  debounce_delay = 15,
  side = "left",
  preserve_window_proportions = false,
  number = false,
  relativenumber = false,
  signcolumn = "yes",
  width = 35,
  float = {
    enable = false,
    quit_on_focus_loss = true,
    open_win_config = {
      relative = "editor",
      border = "rounded",
      width = 30,
      height = 30,
      row = 1,
      col = 1,
    },
  },
},

renderer = {
  group_empty = true,

  indent_markers = {
    enable = true;
  },

  icons = {
    web_devicons = {
      file = {
	enable = true,
	color = true,
      },
      folder = {
	enable = false,
	color = true,
      },
    },
    git_placement = "before",
    modified_placement = "after",
    diagnostics_placement = "signcolumn",
    bookmarks_placement = "signcolumn",
    padding = " ",
    symlink_arrow = " -> ",
    show = {
      file = true,
      folder = true,
      folder_arrow = true,
      git = true,
      modified = true,
      diagnostics = true,
      bookmarks = true,
    },
    glyphs = {
      default = "",
      symlink = "",
      bookmark = "󰆤",
      modified = "●",
      folder = {
	arrow_closed = "",
	arrow_open = "",
	default = "",
	open = "",
	empty = "",
	empty_open = "",
	symlink = "",
	symlink_open = "",
      },
      git = {
	unstaged = "✗",
	staged = "✓",
	unmerged = "",
	renamed = "➜",
	untracked = "★",
	deleted = "",
	ignored = "◌",
      },
    },
  },
},

filters = {
  dotfiles = true,
},
 }) 



require("zen-mode").setup({
window = {
  width = .95 -- width will be 85% of the editor width
}
})

require ("presence").setup({
    auto_update         = true,                       
    neovim_image_text   = "NvimGod",      
    main_image          = "file",                   
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

hi EndOfBuffer guifg=bg
