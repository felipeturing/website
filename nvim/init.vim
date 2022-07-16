set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
" Tabs
set sw=4
set relativenumber
set laststatus=2
set noshowmode
" Fold
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" call plug#begin('/root/.config/nvim/plugged')
" " Make sure you use single quotes

" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" " Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" " Multiple Plug commands can be written in a single line using | separators
" " Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" " On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" " Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" " Using a non-default branch
" " Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" " Plug 'fatih/vim-go', { 'tag': '*' }

" " Plugin options
" " Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" " Plugin outside ~/.vim/plugged with post-update hook
" " Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" " Unmanaged plugin (manually installed and updated)
" " Plug '~/my-prototype-plugin'

" " Initialize plugin system
" call plug#end()

call plug#begin('/root/.config/nvim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plug 'morhetz/gruvbox'
Plug 'projekt0n/github-nvim-theme'

" Plugins para personalizar el editor de texto
Plug 'easymotion/vim-easymotion' 
Plug 'scrooloose/nerdtree'

" Error al agregar este plugin: línea 45 (ya está solucionado)
Plug 'scrooloose/nerdtree-project-plugin'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-commentary'
Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

" colorscheme gruvbox
" let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen = 1

colorscheme github_*
" NOTE: Configuration needs to be set BEFORE loading the color scheme with `colorscheme` command
let g:github_function_style = "italic"
let g:github_sidebars = ["qf", "vista_kind", "terminal", "packer"]
" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:github_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }
colorscheme github_dark_default
" colorscheme github_dimmed
" colorscheme github_dark_colorblind

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }


" Configuración del plugin junegunn/vim-github-dashboard.git
" Credenciales de GitHub @felipeturing
" let g:github_dashboard = { 'username': 'felipeturing', 'password': $GITHUB_TOKEN_FELIPETURING}
let g:github_dashboard = { 'username': 'felipeturing', 'password': $GITHUB_TOKEN_FELIPETURING }

" Dashboard window position
" - Options: tab, top, bottom, above, below, left, right
" - Default: tab
let g:github_dashboard['position'] = 'top'

" Disable Emoji output
" - Default: only enable on terminal Vim on Mac
let g:github_dashboard['emoji'] = 0

" Customize emoji (see http://www.emoji-cheat-sheet.com/)
let g:github_dashboard['emoji_map'] = {
\   'user_dashboard': 'blush',
\   'user_activity':  'smile',
\   'repo_activity':  'laughing',
\   'ForkEvent':      'fork_and_knife'
\ }

" Command to open link URLs
" - Default: auto-detect
let g:github_dashboard['open_command'] = 'open'

" API timeout in seconds
" - Default: 10, 20
let g:github_dashboard['api_open_timeout'] = 10
let g:github_dashboard['api_read_timeout'] = 20

" Do not set statusline
" - Then you can customize your own statusline with github_dashboard#status()
let g:github_dashboard['statusline'] = 0

" GitHub Enterprise
" let g:github_dashboard['api_endpoint'] = 'http://github.mycorp.com/api/v3'
" let g:github_dashboard['web_endpoint'] = 'http://github.mycorp.com'







" Atajos personalizados
let mapleader = " "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>qq :q!<CR>
nmap <Leader>tt :TagbarToggle<CR>
