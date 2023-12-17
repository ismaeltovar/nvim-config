require('ismael')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	"folke/neodev.nvim",
	"nvim-treesitter/nvim-treesitter",
	"junegunn/fzf",
	{
		'nvim-telescope/telescope.nvim', 
		branch = '0.1.x', 
		dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep', 'sharkdp/fd' },
	},
	{ 
		'nvim-telescope/telescope-fzf-native.nvim', 
		build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
	},
	"rebelot/kanagawa.nvim",
})

--kanagawa color scheme
--vim.cmd("colorscheme kanagawa-wave")
vim.cmd("colorscheme kanagawa-dragon")
--vim.cmd("colorscheme kanagawa-lotus")

--[[
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
:set smartindent
:set paste

:set termguicolors

:lua require('vscode').load('dark')
:lua require('telescope').setup()
--]]
