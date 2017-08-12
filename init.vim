"--------------------
"For Neovim
"Authors: raska
"-^\_________________


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=$HOME/.config/vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand($HOME . '/.config/vim/dein'))

" load toml:
call dein#load_toml($HOME . '/.config/nvim/ndein.toml', {'lazy': 0})
"call dein#load_toml($HOME . '/.congig/nvim/ndeinlazy.toml', {'lazy' : 1})

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------


" basic settings--------------------------------------------
set number "行番号表示
set showmode "モード表示
set ruler "ルーラーの表示
set laststatus=2 "ステータスラインを常に表示
set smartindent "オートインデント
set mouse=a "マウス操作を可能とする
set backspace=indent,eol,start "バックスペースでインデントや改行を削除可能とする
" ----------------------------------------------------------

" color-----------------------------------------------------
syntax on "カラー表示
highligh Visual ctermfg = White ctermbg = Blue
highligh Error ctermfg = White ctermbg = DarkRed
highligh TODO ctermfg = White ctermbg = DarkYellow
" ----------------------------------------------------------

" directory-----------------------------------------------------
au BufEnter * execute ":lcd " . expand("%:p:h")
" ----------------------------------------------------------

" indent----------------------------------------------------
set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=2 "画面上でタブ文字が占める幅
set shiftwidth=2 "自動インデントでずれる幅
set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
" ------------------------------------------------------------

" Tab---------------------------------------------------------
"The prefix key.
nnoremap    [Tag]   <Nop>
nmap    t [Tag]

"Tab jump
" t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ
for n in range(1, 9)
   execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor

" tc 新しいタブを一番右に作る
map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tx タブを閉じる
map <silent> [Tag]x :tabclose<CR>
" tn 次のタブ
map <silent> [Tag]n :tabnext<CR>
" tp 前のタブ
map <silent> [Tag]p :tabprevious<CR>
"------------------------------------------------------------------

"vimshellの設定-------------------------------------------------------
autocmd VimEnter * rightbelow 10split
autocmd VimEnter * VimShell

let g:vimshell_enable_start_insert = 0
"---------------------------------------------------------------------

"vimfilerの設定-------------------------------------------------------
autocmd VimEnter * VimFiler -split -simple -winwidth=30 -no-quit

let g:vimfiler_edit_action = 'tabopen'
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
let g:netrw_liststyle = 3
"---------------------------------------------------------------------
