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
	-- onedark theme
	'navarasu/onedark.nvim',

	-- Fuzzy Finder (files, lsp, etc)
	{
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		dependencies = {
			'nvim-lua/plenary.nvim',
			-- Fuzzy Finder Algorithm which requires local dependencies to be built.
			-- Only load if `make` is available. Make sure you have the system
			-- requirements installed.
			{
				'nvim-telescope/telescope-fzf-native.nvim',
				-- NOTE: If you are having trouble with this installation,
				--       refer to the README for telescope-fzf-native for more instructions.
				build = 'make',
				cond = function()
					return vim.fn.executable 'make' == 1
				end,
			},
		},
	},

	-- treesitter language highlighting, edit and navigate code
	{
		'nvim-treesitter/nvim-treesitter',
		dependencies = {
			'nvim-treesitter/nvim-treesitter-textobjects',
		},
		build = ':TSUpdate',
	},

	-- fugitive for git integration
	'tpope/vim-fugitive',

	-- git hub integration
	'tpope/vim-rhubarb',

	-- adjust shiftwidth and expandtab
	'tpope/vim-sleuth',

	-- LSP Language Server Protocol - config and plugins
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			-- Automatically install LSPs to stdpath for neovim
			{ 'williamboman/mason.nvim', config = true },
			'williamboman/mason-lspconfig.nvim',

			-- Useful status updates for LSP
			-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
			{ 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },

			-- Additional lua configuration, makes nvim stuff amazing!
			'folke/neodev.nvim',
		},
	},

	-- autocompletion
	-- {
	-- 	'hrsh7th/nvim-cmp',
	-- 	dependencies = {
	-- 		-- Snippet Engine & its associated nvim-cmp source
	-- 		'L3MON4D3/LuaSnip',
	-- 		'saadparwaiz1/cmp_luasnip',
	--
	-- 		-- Adds LSP completion capabilities
	-- 		'hrsh7th/cmp-nvim-lsp',
	--
	-- 		-- Adds a number of user-friendly snippets
	-- 		'rafamadriz/friendly-snippets',
	-- 	},
	-- },

	-- autocompletion
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			-- Snippet Engine & its associated nvim-cmp source
			{
				'L3MON4D3/LuaSnip',
				build = (function()
					-- Build Step is needed for regex support in snippets
					-- This step is not supported in many windows environments
					-- Remove the below condition to re-enable on windows
					if vim.fn.has 'win32' == 1 then
						return
					end
					return 'make install_jsregexp'
				end)(),
			},
			'saadparwaiz1/cmp_luasnip',

			-- Adds LSP completion capabilities
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',

			-- Adds a number of user-friendly snippets
			'rafamadriz/friendly-snippets',
		},
	},

	-- Useful plugin to show you pending keybinds.
	{ 'folke/which-key.nvim', opts = {} },

	-- Adds git related signs to the gutter, as well as utilities for managing changes
	'lewis6991/gitsigns.nvim',

	-- Set lualine as statusline
	{
		'nvim-lualine/lualine.nvim',
		-- See `:help lualine.txt`
		dependencies = { 'nvim-tree/nvim-web-devicons', opt = true},
		-- opts = {
		-- 	options = {
		-- 		icons_enabled = false,
		-- 		theme = 'onedark',
		-- 		component_separators = '|',
		-- 		section_separators = '',
		-- 	},
		-- },
	},

	-- Add indentation guides even on blank lines
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	-- {
	-- 	'lukas-reineke/indent-blankline.nvim',
	-- 	-- Enable `lukas-reineke/indent-blankline.nvim`
	-- 	-- See `:help indent_blankline.txt`
	-- 	opts = {
	-- 		char = '┊',
	-- 		show_trailing_blankline_indent = false,
	-- 	},
	-- },

	-- "gc" to comment visual regions/lines
	{ 'numToStr/Comment.nvim', opts = {} },

	-- autopairs
	{
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	},

	-- toggle terminal
	{'akinsho/toggleterm.nvim', version = "*", config = true},

	-- nvim tree
	'nvim-tree/nvim-tree.lua',

	-- markdown preview
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},

	-- lazygit integration in nvim
	-- nvim v0.8.0
	{
		"kdheepak/lazygit.nvim",
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		-- setting the keybinding for LazyGit with 'keys' is recommended in
		-- order to load the plugin when the command is run for the first time
		keys = {
			{ "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
		}
	},


}

local opts = {}

require("lazy").setup(plugins, opts)
