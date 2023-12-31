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
		dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep', 'sharkdp/fd', "nvim-tree/nvim-web-devicons" },
	},
	{ 
		'nvim-telescope/telescope-fzf-native.nvim', 
		build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
	},
	"rebelot/kanagawa.nvim",
})

-- Dev icons 
require'nvim-web-devicons'.setup {
 color_icons = true;
 default = true;
 strict = true;
}

--kanagawa color scheme
--vim.cmd("colorscheme kanagawa-wave")
vim.cmd("colorscheme kanagawa-dragon")
--vim.cmd("colorscheme kanagawa-lotus")

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>flg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

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
