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

local plugins = {
	-- init.lua:
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	{ 'ThePrimeagen/harpoon'},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{'nvim-treesitter/nvim-treesitter'},
	{'mbbill/undotree'},
	{'neovim/nvim-lspconfig'},
	{"hrsh7th/nvim-cmp"},
	{"hrsh7th/cmp-nvim-lsp"},
	{"hrsh7th/cmp-vsnip"},
	{"hrsh7th/cmp-path"},
	{"hrsh7th/cmp-buffer"},
	{'hrsh7th/vim-vsnip'},
	{"simrat39/rust-tools.nvim"},
    {"nvim-lua/popup.nvim"},
    { 'echasnovski/mini.comment', version = '*' },
}

require("lazy").setup(plugins, opts)
