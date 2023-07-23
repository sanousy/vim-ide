" URL: https://vim.wikia.com/wiki/Example_vimrc
" Authors: https://vim.wikia.com/wiki/Vim_on_Libera_Chat
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.

"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
    filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
    syntax on
endif

set hidden

set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
if has('mouse')
    set mouse=a
endif
set cmdheight=1
set number
set notimeout ttimeout ttimeoutlen=200
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType js setlocal shiftwidth=2 tabstop=2
set shiftwidth=4
set softtabstop=4
set expandtab
map Y y$
filetype plugin indent on
nnoremap <C-L> :nohl<CR><C-L>
map <C-PageUp> :tabprev<CR>
map <C-PageDown> :tabnext<CR>

"Auto indentation
noremap <F3> gg=G
"color scheme
colorscheme sano
" copy paste like GUI editors
noremap <C-a> ggVG
vmap <C-c> "+y
map <C-v> "+p
map <C-x> "+d
"nnoremap <C-o> :e<Space>

noremap <C-Right> <C-w>l
noremap <C-Left> <C-w>h
noremap <C-Down> <C-w>j
noremap <C-Up> <C-w>k
"------------------------------------------------------------
"

" Statusline with highlight groups (requires Powerline font, using Solarized theme)
set statusline=
set statusline+=\%(%{&buflisted?bufnr('%'):''}\➡\ %)
set statusline+=%< " Truncate line here
set statusline+=%f\  " File path, as typed or relative to current directory
set statusline+=%{&modified?'💾\ ':''}
set statusline+=%{&readonly?'🚫\ ':''}
set statusline+=%1*▶\  " Set highlight group to User1
set statusline+=%= " Separation point between left and right aligned items
set statusline+=\ %{&filetype!=#''?&filetype:'none'}
set statusline+=%(\ %{(&bomb\|\|&fileencoding!~#'^$\\\|utf-8'?'\'.&fileencoding.(&bomb?'-bom':''):'')
            \.(&fileformat!=#(has('win32')?'dos':'unix')?'\ '.&fileformat:'')}%)
set statusline+=%(\◀\ %{&modifiable?(&expandtab?'⤑\ ':'→\ ').&shiftwidth:''}%)
set statusline+=\ ◀\ %* " Restore normal highlight
set statusline+=\ %{&number?'':printf('%2d,',line('.'))} " Line number
set statusline+=%-2v " Virtual column number
set statusline+=\ %2p%% " Percentage through file in lines as in |CTRL-G|

hi StatusLine cterm=reverse gui=reverse ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000
hi User1 ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000



if exists('+autochdir')
    set autochdir
endif
"Lexplore by default autochange directory
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_altv = 1
let g:netrw_winsize = 20
let g:netrw_chgwin=1

autocmd VimEnter * nested :tab sball
autocmd BufWinEnter * nested :tab sball


let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

" ctrl+o open explored (toggle)
noremap <silent> <C-o> :call ToggleNetrw()<CR>
" ctrl+s Saves the file
noremap <C-s> :w<CR>
" ctrl+a Save as prompt
noremap <C-a> :w
" ctrl+n New buffer (file to save later)
noremap <C-n> :tabnew<CR>
" ctrl+q close current buffer (file)
noremap <C-q> :q <CR>


