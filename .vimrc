" --------------------------------
" 基本設定
" --------------------------------
" vim内部で使われる文字エンコーディングをutf-8に設定する
set encoding=utf-8

" 想定される改行コードの指定する
set fileformats=unix,dos,mac

" ハイライトを有効化する
syntax enable

" 挿入モードでTABを挿入するとき、代わりに適切な数の空白を使う
set expandtab

" 新しい行を開始したとき、新しい行のインデントを現在行と同じにする
set autoindent

" ファイル形式の検出の有効化する
" ファイル形式別プラグインのロードを有効化する
" ファイル形式別インデントのロードを有効化する
filetype plugin indent on

" 行番号を表示する
set number
" カーソル行の背景色を変える
set cursorline
" ステータス行を常に表示
set laststatus=2
" メッセージ表示欄を2行確保
set cmdheight=2
" 対応する括弧を強調表示
set showmatch
" ヘルプを画面いっぱいに開く
set helpheight=999
" 不可視文字を表示
set list
" 不可視文字の表示記号指定
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮

" Backspaceキーの影響範囲に制限を設けない
set backspace=indent,eol,start
" 行頭行末の左右移動で行をまたぐ
set whichwrap=b,s,h,l,<,>,[,]
" 上下8行の視界を確保
set scrolloff=8
" 左右スクロール時の視界を確保
set sidescrolloff=16
" 左右スクロールは一文字づつ行う
set sidescroll=1

" 保存されていないファイルがあるときは終了前に保存確認
set confirm
" 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set hidden
"外部でファイルに変更がされた場合は読みなおす
set autoread
" ファイル保存時にバックアップファイルを作らない
set nobackup
" ファイル編集中にスワップファイルを作らない
set noswapfile
" 保存されていないファイルがあるときは終了前に保存確認
set confirm
" 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set hidden
"外部でファイルに変更がされた場合は読みなおす
set autoread
" ファイル保存時にバックアップファイルを作らない
set nobackup
" ファイル編集中にスワップファイルを作らない
set noswapfile

" -------------------------------
" vim-plug
" -------------------------------
call plug#begin('~/.vim/plugged')

" Vundle/NeoBundle と同じように
Plug 'junegunn/seoul256.vim'

" コマンド実行時に読み込む
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle'] }

" 指定したファイルタイプを開いたときに読み込む
Plug 'tpope/vim-fireplace', { 'for': ['clojure'] }

" X | Y の時, X をインストールした後に Y をインストール
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" コード補完
Plug 'Shougo/neocomplete.vim'
Plug 'marcus/rsense'
Plug 'supermomonga/neocomplete-rsense.vim'

" 静的解析
Plug 'scrooloose/syntastic'

" ドキュメント参照
Plug 'thinca/vim-ref'
Plug 'yuku-t/vim-ref-ri'

" メソッド定義元へのジャンプ
Plug 'szw/vim-tags'

" 自動で閉じる
Plug 'tpope/vim-endwise'

call plug#end()

" -------------------------------
" Rsense
" -------------------------------
let g:rsenseHome = '/usr/local/lib/rsense-0.3'
let g:rsenseUseOmniFunc = 1

" --------------------------------
" rubocop
" --------------------------------
" syntastic_mode_mapをactiveにするとバッファ保存時にsyntasticが走る
" active_filetypesに、保存時にsyntasticを走らせるファイルタイプを指定する
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['ruby'] }
let g:syntastic_ruby_checkers = ['rubocop']
