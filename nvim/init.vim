" Configuração para clipboard
set clipboard=unnamed,unnamedplus

" Configuração para codificação UTF-8
set encoding=utf-8

" Ativar a coloração de sintaxe
filetype plugin indent on
syntax on

" Definir tamanho das tabulações
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Configuração para cores serem bem aceitas independente do terminal
set termguicolors

" Configurações do tema
colorscheme vim						" Tema
set showtabline=2 					" Linha de título
highlight TabLineSel gui=bold,italic			" Pesronalização da linha de título
highlight TabLineSel guifg=#222222 guibg=#888888	" Personalização da linha de título
"set tabline=%#TabLineSel#\ \ %f			" Exibição da linha de título
set tabline=%#TabLineSel#\ "				" Exibição da linha de título Vazia

set relativenumber					" Ativa a numeração relativa das linhas
highlight LineNr guifg=#545454				" Cor dos números das linhas
highlight CursorLineNr guifg=#888888			" Cor do número de linha do cursor
set numberwidth=4					" Ajusta a largura da coluna de números para 5 caracteres

set foldcolumn=2					" Coluna fixa (para quando :set nonumber)
highlight FoldColumn guibg=#222222			" Cor da coluna fixa

set cursorline						" Linha do cursor
highlight CursorLine guibg=#2e2e2e			" Cor da linha do cursor 

highlight Pmenu guibg=#808080 guifg=#000000		" Cor de fundo e texto do popup menu
highlight PmenuSel guibg=#333333 guifg=#FFFFFF		" Cor do item selecionado no popup menu
highlight PmenuSbar guibg=#808080			" Cor da barra de rolagem do popup menu
highlight PmenuThumb guibg=#111111			" Cor do indicador da barra de rolagem

highlight Normal guibg=#222222 				" Cor de fundo

highlight Identifier guifg=#79c0ff			" Azul claro (variáveis, funções)
highlight Function guifg=#d2a8ff			" Roxo claro (nomes de funções)
highlight Identifier guifg=#79c0ff			" Identificadores como variáveis e funções (azul claro)
highlight Statement guifg=#ff7b72			" Vermelho claro (palavras-chave)
highlight Type guifg=#ffa657				" Laranja (tipos)
highlight Keyword guifg=#8b949e				" Cinza claro (palavras-chave como return)
highlight Constant guifg=#5f87af			" Azul escuro (constantes, números)
highlight Number guifg=#a3f7bf				" Verde claro para números
highlight String guifg=#87afd7				" Azul claro para strings

highlight MatchParen gui=bold guifg=#ff79c6 guibg=None 	" Destaque de parênteses
highlight Comment gui=italic guifg=#808080		" Personalização dos Comentários

highlight Visual guibg=#444c56				" Cor do destaque de seleção
highlight Search guibg=#ffd54f guifg=#000000		" Destaque de buscas (amarelo claro)

highlight DiffAdd guibg=#244032 guifg=#56d364		" Linhas adicionadas (verde)
highlight DiffChange guibg=#2b6a6d guifg=#f9c74f	" Linhas alteradas (amarelo)
highlight DiffDelete guibg=#462c32 guifg=#ff7b72	" Linhas removidas (vermelho)
highlight DiffText guibg=#045f5f guifg=#ffffff		" Texto modificado (azul claro)

highlight Keyword guifg=#ff7b72 gui=bold		" Vermelho claro para palavras-chave como 'from', 'import', 'class', 'def'
highlight Conditional guifg=#ff7b72 gui=bold		" Cor semelhante para 'if', 'else', 'for', 'while'
highlight Repeat guifg=#ff7b72 gui=bold			" Loops (for, while, continue, etc.)
highlight Include guifg=#ff7b72 gui=bold		" Importações (from, import)
highlight PreProc guifg=#d2a8ff				" Pré-processadores e declarações

" Desativar linhas não utilizadas no final do arquivo
set fillchars=fold:\ ,eob:\ 

" Mini barra
set laststatus=2
highlight StatusLine gui=bold,italic guibg=#222222 guifg=#888888
set statusline=%#StatusLine#\ %m%r%h%w\ %=\%Y\ -\ %p%%\ of\ the\ file\ -\ line\ %l,%v\ of\ %L\ 

" Ativar suporte para o mouse
set mouse=a

" Configurações de pesquisa
"set ignorecase
"set smartcase

" Configuração para recuo automático
"set autoindent

" Devinir largura maxima da linha
"set textwidth=79

" Exibir caracteres de tabulação e espaços em branco
"set list
"set listchars=tab:»\ ,trail:·

" Configuração para criar arquivos de backup e arquivos de troca
"set backup
"set backupdir=~/.vim/backup
"set directory=~/.vim/swap

