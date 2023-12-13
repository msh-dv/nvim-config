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
"Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'nvim-tree/nvim-web-devicons'

Plug 'turbio/bracey.vim'
Plug 'mattn/emmet-vim'

"Plug 'dense-analysis/ale'
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


"Desarrollo web 
let g:user_emmet_leader_key=',' "Doble coma para completar la plantilla
let g:tagalong_verbose = 1

"require("bufferline").setup{}


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
    auto_update         = true,                       -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
    neovim_image_text   = "", -- Text displayed when hovered over the Neovim image
    main_image          = "",                   -- Main image display (either "neovim" or "file")
    client_id           = "",       -- Use your own Discord application client id (not recommended)
    log_level           = nil,                        -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
    debounce_timeout    = 10,                         -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
    enable_line_number  = false,                      -- Displays the current line number instead of the current project
    blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
    buttons             = true,                       -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
    file_assets         = {},                         -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
    show_time           = true,                       -- Show the timer

    -- Rich Presence text options
    editing_text        = "Editing %s",               -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
    file_explorer_text  = "Browsing %s",              -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
    git_commit_text     = "Committing changes",       -- Format string rendered when committing changes in git (either string or function(filename: string): string)
    plugin_manager_text = "Managing plugins",         -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
    reading_text        = "Reading %s",               -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
    workspace_text      = "Working on %s",            -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
    line_number_text    = "Line %s out of %s",        -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
})

END
