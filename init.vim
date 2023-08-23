
:lua require('plugins')
:set number 
:set relativenumber
:set autoindent
:set tabstop=4 
:set shiftwidth=4
:set smarttab
:set mouse=a
:set ignorecase
:set smartcase
:set paste

:set termguicolors

:lua require('vscode').load('dark')
:lua require('telescope').setup()
