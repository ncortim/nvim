-- This file can be loaded by calling `lua require('plugins')` from your init.vim
    -- using packer.nvim
    -- using packer.nvim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- telescope finder
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- onedark theme
  use 'navarasu/onedark.nvim'

  -- treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- harpoon
  use('theprimeagen/harpoon')

  -- undotree
  use('mbbill/undotree')

  -- fugitive
  use('tpope/vim-fugitive')

  -- lsp zero
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {'williamboman/mason.nvim'},           -- Optional
          {'williamboman/mason-lspconfig.nvim'}, -- Optional

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},         -- Required
          {'hrsh7th/cmp-nvim-lsp'},     -- Required
          {'hrsh7th/cmp-buffer'},       -- Optional
          {'hrsh7th/cmp-path'},         -- Optional
          {'saadparwaiz1/cmp_luasnip'}, -- Optional
          {'hrsh7th/cmp-nvim-lua'},     -- Optional

          -- Snippets
          {'L3MON4D3/LuaSnip'},             -- Required
          {'rafamadriz/friendly-snippets'}, -- Optional
      }
  }

--  -- nvim tree
--  use {
--      'nvim-tree/nvim-tree.lua',
--      requires = {
--          'nvim-tree/nvim-web-devicons', -- optional, for file icons
--      },
--      tag = 'nightly' -- optional, updated every week. (see issue #1193)
--  }
--
    -- devicons for nvim tree
    use 'nvim-tree/nvim-web-devicons'

    -- gitsigns
    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }

    -- autopairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

--    -- comment string 
--    use 'JoosepAlviste/nvim-ts-context-commentstring'

    -- toggle terminal
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- bufferline
    --use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    -- code outline
    --use {
    --  'stevearc/aerial.nvim',
    --  config = function() require('aerial').setup() end
    --}

end)
